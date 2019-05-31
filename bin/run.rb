require_relative '../config/environment'
require_relative '../lib/run-methods'

prompt = TTY::Prompt.new

puts "
       _ _____  _   _ _  __     __
      | |  __ \\| \\ | | | \\ \\   / /
      | | |__) | \| | | | \ \\  _/ / 
  _   | |  _  /| . ` | |   \\   /  
 | |__| | | \\ \\| |\\  | |____| |   
  \\____/|_|  \\_\\_| \\_|______|_|   
                                                             
"
                                     

puts ""
puts "Welcome to JRNLY, your new favorite journal app!"
sleep(1)
puts ""

welcome(prompt)

puts "HELLO WORLD"
