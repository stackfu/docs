require 'coderay'

def code(*args, &block)
  buffer = eval('_erbout', block.binding)
  
  lang = args.first || :ruby
  pos = buffer.length
  block.call(*args)
  data = buffer[pos..-1]
  buffer[pos..-1] = codify(data, lang)
end

def codify(str, lang)
  %{<div class='CodeRay'><pre><code class="#{lang}">#{CodeRay.scan(str, lang).html}</code></pre></div>}
end