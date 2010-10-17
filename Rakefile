require 'nanoc3/tasks'

desc 'Publishes the output'
task :publish do
  exec "git push && log=`git log --format=\"%s\" | head -1` && nanoc compile && cd output && git add . && git commit -m \"$log\" && wn push && git push"
end