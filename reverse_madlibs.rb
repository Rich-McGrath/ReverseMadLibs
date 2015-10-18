nouns = File.open('nouns.txt', 'r') do |f|
  f.read
end.split

verbs = File.open('verbs.txt', 'r') do |f|
  f.read
end.split

adjectives = File.open('adjectives.txt', 'r') do |f|
  f.read
end.split

dictionary = {
  nouns: nouns,
  verbs: verbs,
  adjectives: adjectives
}

def say(msg)
  puts "=> #{msg}"
end

def exit_with(msg)
  say msg
  exit
end

def get_inputs(word)
  say "Input a #{word}"
  STDIN.gets.chomp
end

exit_with('No input file!') && exit if ARGV.empty?
exit_with("Input file dosen't exist!") && exit if !File.exist?(ARGV[0])

contents = File.open(ARGV[0], 'r') do |f|
  f.read
end

contents.gsub!('NOUN').each do |noun|
  # dictionary[:nouns].sample
  get_inputs(noun)
end

contents.gsub!('VERB').each do
  dictionary[:verbs].sample
end

contents.gsub!('ADJECTIVE').each do
  dictionary[:adjectives].sample
end

p contents.chomp
