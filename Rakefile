desc 'Start server and watchers'

task :s do

  tasks = [
    Process.spawn('coffee --compile --watch js/app.coffee'),
    Process.spawn('sass --watch css/scss:css'),
    Process.spawn('python -m SimpleHTTPServer')
  ]

  trap("INT") {
    tasks.each { |pid| Process.kill(9, pid) rescue Errno::ESRCH }
    exit 0
  }

  `open http://localhost:8000`

  tasks.each { |pid| Process.wait(pid) }
end
