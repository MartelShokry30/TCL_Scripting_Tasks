puts "****Writing Verilog Block Interface****"
set in_ports "IN Load Up Down CLK"
set in_ports_width "4 1 1 1 1"
set out_ports "High Counter Low" 
set out_ports_width "1 4 1"
set module_name "Up_Dn_Counter"

puts "module $module_name ("
for {set a 0} {$a < [llength $in_ports]} {incr a} {
	if {[lindex $in_ports_width $a] != 1} {
		puts "input \[[expr [lindex $in_ports_width $a] -1]:0\] [lindex $in_ports $a] ,"
	} else {
		puts "input [lindex $in_ports $a] ,"
	}
}

for {set a 0} {$a < [llength $out_ports]} {incr a} {
	if {[lindex $out_ports_width $a] != 1} {
		
	    if {$a == [expr [llength $out_ports] - 1] } { #without a comma for last line
			puts "output \[[expr [lindex $out_ports_width $a] -1]:0\] [lindex $out_ports $a] "
		} else {
		puts "output \[[expr [lindex $out_ports_width $a] -1]:0\] [lindex $out_ports $a] ,"
		}
	} else {

	    if {$a == [expr [llength $out_ports] - 1] } {
			puts "output [lindex $out_ports $a] "
		} else {
		puts "output [lindex $out_ports $a] ,"
		}
	}	

}
puts ");"
puts "Martel Shokry"