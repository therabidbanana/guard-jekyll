require 'guard'
require 'guard/guard'

require 'jekyll'

module Guard
  class Jekyll < Guard

    VERSION = '0.0.2'

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

    def run_on_change(paths)
      jekyll!
    end

    def run_on_deletion(paths)
      jekyll!
    end

    private

    def jekyll!
      UI.info "Guard::Jekyll running."

      create_site
      @jekyll_site.process

      UI.info "Guard::Jekyll complete."
    end

    def create_site
      options = {
        'source'      => @working_path,
        'destination' => File.join(@working_path, '_site'),
        'plugins'     => File.join(@working_path, '_plugins')
      }

      config = ::Jekyll.configuration(options)
      @jekyll_site = ::Jekyll::Site.new(config)
    end
  end
end
