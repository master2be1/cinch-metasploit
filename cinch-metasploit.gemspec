Gem::Specification.new do |s|
  s.name = 'cinch-metasploit'
  s.version = '0.1.0'
  s.summary = 'IRC BOT Front end to metasploit'
  s.description = 'Run site port scans from IRC'
  s.authors = ['Christian Fernandez']
  s.email = ['cfernandez@hispagatos.org']
  s.homepage = 'https://github.com/HispaGatos/cinch-metasploit.git'
  s.required_ruby_version = '>= 1.9.1'
  s.files = Dir['LICENSE', 'README.md', '{lib,examples}/**/*']
  s.add_dependency("cinch", "~> 2.0")
  s.add_dependency("ruby-metasploit", "~> 0.6")
  s.license = "GPLv3"
end
