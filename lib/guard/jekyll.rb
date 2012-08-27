require 'guard'
require 'guard/guard'

require 'jekyll'

module Guard
  class Jekyll < Guard

    VERSION = '0.2.0'

    def initialize(watchers=[], options={})
      super
      @working_path = File.expand_path(File.dirname("."))
    end

    def start
      UI.info "Guard::Jekyll is watching for file changes..."
      run_all
      true
    end

    def run_all
      jekyll!
    end

    def run_on_changes(paths)
      jekyll!
    end

    def reload
      jekyll!
    end

    private

    def jekyll!
      UI.info "Guard::Jekyll running."

      create_site
      @jekyll_site.process

      UI.info "Guard::Jekyll complete."
    rescue Exception => e
      UI.error "Guard::Jekyll failed: #{e}"
      throw :task_has_failed
    end

    def create_site
      options = { 'source' => @working_path }

      unless File.exists? File.join(@working_path, '_config.yml')
        options['destination'] = File.join(@working_path, '_site')
        options['plugins'] = File.join(@working_path, '_plugins')
      end

      config = ::Jekyll.configuration(options)
      @jekyll_site = ::Jekyll::Site.new(config)
    end
  end
end
