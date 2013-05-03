# encoding: utf-8

require 'guard'
require 'guard/guard'

require 'jekyll'

module Guard
  class Jekyll < Guard
    def initialize(watchers = [], options = {})
      defaults = {
        :source => './',
      }

      super(watchers, options.merge(defaults))

      @site = Jekyll::Site.new(Jekyll.configuration(options))
    end

    def start
      UI.info 'Guard::Jekyll is watching for file changes'
      site_process
    end

    def run_all
      site_process
    end

    def run_on_changes(paths)
      site_process
    end

    private

    def process_site
      UI.info 'Guard::Jekyll running'

      @site.process

      UI.info 'Guard::Jekyll complete'
    rescue Exception => e
      UI.error "Guard::Jekyll failed: #{e}"
      throw :task_has_failed
    end
  end
end
