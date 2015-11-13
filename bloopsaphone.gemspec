Gem::Specification.new do |s|
  s.name = 'bloopsaphone'
  s.version = '0.5'
 
  s.authors = ["why the lucky stiff", "hao lian"]
  s.date = '2015-11-13'
  s.description = 'arcade sounds and chiptunes'
  s.email = 'hi@haolian.org'
  s.extensions = ["ext/ruby/extconf.rb"]
  s.extra_rdoc_files = ["README", "COPYING"]
  s.files = ["COPYING", "README", "c/bloopsaphone.c", "c/bloopsaphone.h", "c/notation.c",
    "ext/ruby/extconf.rb", "ext/ruby/rubyext.c", "ext/ruby/test.rb", "ext/ruby/test_load.rb",
    "sounds/dart.blu", "sounds/error.blu", "sounds/ice.blu", "sounds/jump.blu",
    "sounds/pogo.blu", "sounds/stun.blu"]
  s.has_rdoc = false
  s.homepage = 'http://github.com/hlian/bloopsaphone'
  s.summary = 'arcade sounds and chiptunes (the hlian fork)'
end
