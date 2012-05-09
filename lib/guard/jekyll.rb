require 'guard'
require 'guard/guard'

require 'jekyll'

module Guard
  class Jekyll < Guard

    VERSION = '0.0.1'

    def initialize(watchers=[], options={})
      super
      @working_path = File.expand_path(File.dirname("."))
    end

    def start
       UI.info "Guard::Jekyll is watching for file changes..."
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

      ::Jekyll::Site.new(::Jekyll.configuration({'source' => @working_path}))

      UI.info "Guard::Jekyll complete."
    end
  end
end
