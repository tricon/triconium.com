require "find"
# It only works for a single depth, no recursion.
# Takes ~/_pages/page.html and turns it into
# /page/index.html

module  Jekyll
  class MyPages < Page
    def initialize(_site, _base, _page)
      @site = _site
      @dir  = "/"
      @base = _base
      @name = _page

      _name = \
      File.basename(@name, File.extname(@name))

      self.process(@name)
      self.read_yaml(File.join(@base, "_pages"), @name)

      unless self.data["layout"]
        self.data["layout"] = "page"
      end
      
      self.data["permalink"] = "/#{_name}/"
      
      unless self.data["title"]
        self.data["title"] = _name.capitalize
      end
    end
  end

  class MyPageGen < Generator
    def generate(_site)
      _pages = []
      _base  = _site.source

      Find.find(File.join(_base, "_pages")) do |_page|
        puts "Rendering #{_page}"
        if _page=~/.html$|.md$|.textile$/
          _pages << File.basename(_page)
        end
      end
      
      _pages = _pages.sort

      _pages.each do |_page|
        # Instance our page creator, which will haxor it
        # all up and take "about.html" and make it
        # /about/index.html
        _page_index = MyPages.new(_site, _base, _page)
        _page_index.render(_site.layouts, _site.site_payload)
        
        _page_index.write(_site.dest)
        
        _site.pages  << _page_index
      end 
    end
  end
end