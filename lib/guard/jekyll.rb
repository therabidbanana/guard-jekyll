# encoding: utf-8

require 'guard'
require 'guard/guard'

require 'jekyll'

module Guard
  class Jekyll < Guard

    def initialize(watchers = [], options = {})
      super
      @source = options[:source] || File.dirname('.')
    end

    def start
      UI.info 'Guard::Jekyll is watching for file changes'
      create_site(@source)
    end

    def run_all
      jekyll!
    end

    def run_on_changes(paths)
      jekyll!
    end

    def run_on_additions(paths)
      jekyll!
    end

    def run_on_modifications(paths)
      jekyll!
    end

    def run_on_removals(paths)
      jekyll!
    end

    private

    def jekyll!
      UI.info 'Guard::Jekyll running'

      @jekyll_site.process

      UI.info 'Guard::Jekyll complete'
    rescue Exception => e
      UI.error "Guard::Jekyll failed: #{e}"
      throw :task_has_failed
    end

    def create_site(source)
      working_path = File.expand_path(source)

      options = {'source' => working_path}

      unless File.exists? File.join(working_path, '_config.yml')
        options['destination'] = File.join(working_path, '_site')
        options['plugins'] = File.join(working_path, '_plugins')
      end

      config = ::Jekyll.configuration(options)
      @jekyll_site = ::Jekyll::Site.new(config)
    end
  end
end
