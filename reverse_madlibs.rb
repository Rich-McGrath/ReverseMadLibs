def say(msg)
  puts "=> #{msg}"
end

say 'No input file!' && exit if ARGV.empty?
say "Inout file dosen't exist!" && exit if !File.exists?(ARGV[0]) #Check to see if input file exists
