puts " **** Logical Operations **** "  
set A 5
set B -1
set C 0
set var0 [expr $A && $C]
set var1 [expr $A || $B]
puts "contents of var0 is $var0"
puts "contents of var1 is $var1"