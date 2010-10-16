include Nanoc3::Helpers::Blogging
include Nanoc3::Helpers::Breadcrumbs
include Nanoc3::Helpers::Capturing
include Nanoc3::Helpers::Filtering
include Nanoc3::Helpers::HTMLEscape
include Nanoc3::Helpers::LinkTo
include Nanoc3::Helpers::Rendering
include Nanoc3::Helpers::Tagging
include Nanoc3::Helpers::Text
include Nanoc3::Helpers::XMLSitemap

def link(label, url=nil)
  link_to label, url || "/#{label.downcase.gsub(" ", "_")}/"
end

def image_tag(url, options = {})
  html =  "<img src=\"/images/#{url}\" "  
  html += options[:title] ? "title=\"#{options[:title]}\" " : ""
  html += options[:alt] ? "alt=\"#{options[:alt]}\"" : ""
  html += "/>"
  html
end

def stylesheet_link_tag(*sources)
  content = []
  sources.each do |source|
    content << %Q(<link rel="stylesheet" type="text/css" href="/stylesheets/#{source}.css" media="screen">)
  end
  content.join("\n")
end