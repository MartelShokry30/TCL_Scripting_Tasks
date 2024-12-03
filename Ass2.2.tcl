set fh [open rtl.txt r+]
set file_data [read $fh]
puts $file_data
set Designs {}
set array_elem ""
for {set a 0} {$a < [string length $file_data]} {incr a} {
	if { [string index $file_data $a] != "\n"} {
		append array_elem [string index $file_data $a]
	} else {
		lappend Designs $array_elem
		set array_elem ""
	}
}
puts $Designs
puts "Martel Shokry"
