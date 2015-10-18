def say(msg)
  puts "=> #{msg}"
end

say 'No input file!' && exit if ARGV.empty?
  

if !File.exists?(ARGV[0]) #Check to see if input file exists
  say "Input file dosen't exist!"
  exit
end
