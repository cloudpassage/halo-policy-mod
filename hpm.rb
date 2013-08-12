#!/usr/bin/env ruby

puts " __           __                          __ __                                    __ __   ___ __             "
puts "|  |--.---.-.|  |.-----.    .-----.-----.|  |__|.----.--.--.    .--------.-----.--|  |__|.'  _|__|.-----.----."
puts "|     |  _  ||  ||  _  |    |  _  |  _  ||  |  ||  __|  |  |    |        |  _  |  _  |  ||   _|  ||  -__|   _|"
puts "|__|__|___._||__||_____|    |   __|_____||__|__||____|___  |    |__|__|__|_____|_____|__||__| |__||_____|__|  "
puts "                            |__|                     |_____|                                                  "
puts "\n"
puts " Created by: Andrew Hay / @andrewsmhay "
puts " http://github.com/halopolicymod"
puts "\n"
print "Please enter the file name to convert: "
file_names = gets.gsub("\n","")
puts "\n"
print "Original directory: "
orig = gets.gsub("\n","")
puts "\n"
print "New directory: "
newdir = gets.gsub("\n","")
puts "\n"
print "Would you like to create a new file with specific [n]ame or a new file with the version [i]ncremented? [n/i]: "
file_decision = gets.gsub("\n","")
if file_decision =~ /n/
	print "What would you like to name the new file: "
	new_file_names = gets.gsub("\n","")
	puts "\nNew filename will be #{new_file_names}"
elsif file_decision =~ /i/
	file_ver = file_names[/\d+/]
	file_ver_new = file_ver.to_i
	file_ver_new += 1
	new_file_output = file_names.gsub(file_ver, "#{file_ver_new.to_s}")
	print "\nNew filename will be: #{new_file_output}"
else
	print "I'm sorry, I didn't understand your selection. Please name your new file to be created: "
	new_file_names = gets.gsub("\n","")
	puts "\nNew filename will be #{new_file_names}"
end
puts "\n"

text = File.read(file_names)
# Opens the file for reading, line by line
File.open(file_names, "r").each_line do |pelement|
	if file_decision =~ /i/		
		#sub the new directory for the old one
  		output_of_gsub = text.gsub("#{orig}","#{newdir}")
  		# write the new file
  		File.open(new_file_output, "w") {|file| file.puts output_of_gsub}
	else
		#sub the new directory for the old one
  		output_of_gsub = text.gsub("#{orig}","#{newdir}")
  		# write the new file
  		File.open(new_file_names, "w") {|file| file.puts output_of_gsub}
	end
end