# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
n32In1 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
n32In2 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
pn32ResOut { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 32
	offset_end 39
}
}
dict set axilite_register_dict control $port_control


