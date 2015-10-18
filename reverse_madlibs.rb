def say(msg)
  puts "=> #{msg}"
end

if ARGV.empty?
  say 'No input file!'
  exit
end

if !File.exists?(ARGV[0]) #Check to see if input file exists
  say "Input file dosen't exist!"
  exit
end
