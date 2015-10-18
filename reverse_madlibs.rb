def say(msg)
  puts "=> #{msg}"
end

def exit_with(msg)
  say msg
  exit
end

exit_with('No input file!') && exit if ARGV.empty?
exit_with("Input file dosen't exist!") && exit if !File.exist?(ARGV[0])
