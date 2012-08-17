require "rubygems"
require "bundler/setup"

require "htmlentities"
require "pry"

ignore(/Gemfile/)
ignore(/Gemfile\.lock/)
ignore(/config\.rb/)
ignore(/.sass-cache/)
ignore(/extensions/)
ignore(/sass/)
ignore(/Rakefile/)
ignore(/Procfile/)
ignore(/\/_.*/)

helpers do
  def sample_code (template, lang)
    sample = render(template)
    coder = HTMLEntities.new
    encoded = coder.encode sample
    "<pre><code class='language-#{lang}'>#{encoded}</code></pre>"
  end

  def h (text)
    coder = HTMLEntities.new
    coder.encode text
  end

  def set_title(new_title=nil)
    @_title = new_title
  end

  def full_title(new_title=nil)
    @_full_title = new_title
  end

  def title
    if !@_title.nil?
     "#{@_title} | Formula Framework"
    elsif !@_full_title.nil?
      @_full_title
    else
      "Formula Framework"
    end
  end

end
before do
  
end
layout 'layout.html.erb'

before 'index.html.erb' do
  full_title "Formula Framework - A Sass and Compass based CSS Framework"
end