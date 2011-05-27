require 'guard'
require 'guard/guard'

require 'jekyll'

module Guard
  class Jekyll < Guard
    def initialize(watchers=[], options={})
      super 
    end

    def start
       UI.info "Jekyll waiting for file changes..."
    end
    
    def run_all
      jekyll!
    end

    def run_on_change(paths)
      jekyll!
    end
    
    private
    
    def jekyll!
      UI.info "Jekyll running."
      
      Jekyll::Site.new(Jekyll.configuration({}))

      UI.info "Jekyll complete."
    end
  end
end
