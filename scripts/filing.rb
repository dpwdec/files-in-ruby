require 'fileutils'

file = File.open("../resources/gems.txt")

file_data = file.readlines.map(&:chomp)

print file_data

file_data = File.open("../info.txt").read

print file_data

File.foreach("../resources/gems.txt") do |line|
    puts "gem #{line}"
end

#File.open("book.txt", "a") { |f| f.write "#{Time.now}" }

#File.write("book.txt", "#{Time.now}", mode: "w")

#the_time = Time.now.to_s
#File.write("book.txt", the_time)

#entries = Dir.glob("**/**")

#print entries

# FileUtils.compare_file("book.txt", "../info.txt")

FileUtils.cp_r("book.txt", "../new_book.txt")

FileUtils.touch("../new_info.csv")

