def get_words_from_file(file_name)
  if !File.exist?(file_name)
    say "#{file_name} dosen't exist!"
    return
  end

  File.open(file_name, 'r') do |f|
    f.read
  end.split
end

nouns = get_words_from_file('nouns.txt')

verbs = get_words_from_file('verbs.txt')

adjectives = get_words_from_file('adjectives.txt')


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
  dictionary[:nouns].sample
  # get_inputs(noun)
end

contents.gsub!('VERB').each do
  dictionary[:verbs].sample
end

contents.gsub!('ADJECTIVE').each do
  dictionary[:adjectives].sample
end

p contents.chomp
