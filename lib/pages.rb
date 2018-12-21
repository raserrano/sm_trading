puts "Loading lib/pages"
Dir["#{File.dirname(__FILE__)}/pages/*_page.rb"].each {|r| load r }