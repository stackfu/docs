def table(options)
  contents = []
  contents << "<table><thead><tr>"
  
  css_classes = []
  options[:headers].each do |head|
    css = head.gsub(" ", "_").downcase
    css_classes << css
    contents << %Q(<th class="#{css}">#{head}</th>)
  end

  contents << "</tr></thead><tbody>"
  
  options[:contents].each do |line|
    contents << "<tr>"
    line.split("|").each_with_index do |cell, i|
      css = css_classes[i]
      contents << %Q(<td class="#{css}">#{cell}</td>)
    end
    contents << "</tr>"
  end
  
  contents << "</tbody></table>"
  contents
end