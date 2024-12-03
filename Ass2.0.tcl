puts "****Assignment 2.0****"
set cities "cairo alexandria damietta dakahlia faiyum sohag aswan"
set Cities_New ""
set First_letter ""
foreach x $cities {
    set First_letter "[string range $x 0 0]"
	set First_letter_up "[string toupper $First_letter]"
	set rest_sen "[string range $x 1 [string length $x]]"
	lappend Cities_New "[append First_letter_up $rest_sen]"
}
puts $Cities_New
puts "Martel Shokry"