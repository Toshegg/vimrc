exts = ''

File.open("#{ARGV[0]}/plugins.txt") do |file|
  exts = file.gets.chomp
end

exts.split(' ').each { |ext| %x(git clone #{ext}) }
