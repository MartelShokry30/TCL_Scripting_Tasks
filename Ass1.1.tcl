puts " **** Bitwise Operations **** "  
set A 20
set B 5
set C 9
set var0 [expr $A & $C]
set var1 [expr $A | $B]
set var2 [expr $A ^ $A]
puts "contents of var0 is $var0"
puts "contents of var1 is $var1"
puts "contents of var2 is $var2"