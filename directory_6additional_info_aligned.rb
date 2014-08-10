# method that takes the user input
def input_students
	puts "Please enter the names of the students"
	#get the first name
	name = gets.chomp
	puts "Please enter country of birth"
	country = gets.chomp
	puts "Enter name followed by country of birth. To finish, just hit return twice"
	#create an empty array
	students = []
	#while the name is not empty, repeat this code
	while !name.empty? do
		#add the student hash to the array
		students << {:name => name, :country => country, :cohort => :august}
		puts "Now we have #{students.length} students"
		#get another name from the user
		name = gets.chomp
		country = gets.chomp
	end

	# return array of students
	students

end

# method that prints the header
def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-------------------------"
end

# this is the method that prints the list of students
def print(students)
	students.each_with_index do |student, index|
		puts "#{index +1} #{student[:name].center(15)} from #{student[:country].center(15)} (#{student[:cohort]} cohort)"
	end
end

# method that summarises the number of students
def print_footer(students)
	puts "Overall, we have #{students.length} great students."
end

students = input_students
print_header
print(students)
print_footer(students)