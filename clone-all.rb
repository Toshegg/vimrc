exts = ''

File.open(Dir.pwd + "/" + "plugins.txt") do |file|
  exts = file.gets.chomp
end

%x(mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim)

exts.split(' ').each { |ext| %x(cd ~/.vim/bundle && git clone #{ext}) }
