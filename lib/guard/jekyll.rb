require 'guard'
require 'guard/guard'

require 'jekyll'

module Guard
  class Jekyll < Guard
    def start
      UI.info 'Guard::Jekyll is watching for file changes'
      rebuild
    end

    def run_all
      rebuild
    end

    def run_on_changes(paths)
      rebuild
    end

    private

    # rebuilds the entire jekyll site
    #
    def rebuild
      UI.info 'Guard::Jekyll regenerating'

      site = ::Jekyll::Site.new(::Jekyll.configuration(options))
      site.process

      UI.info 'Guard::Jekyll done.'
    rescue Exception => e
      UI.error "Guard::Jekyll failed: #{e}"
      throw :task_has_failed
    end
  end
end
