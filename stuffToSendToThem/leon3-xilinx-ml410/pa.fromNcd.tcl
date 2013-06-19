
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name leon3mp -dir "/home/nuno/repos/pdp/grlib-gpl-1.1.0-b4104/designs/leon3-xilinx-ml410/planAhead_run_1" -part xc4vfx60ff1152-11
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "/home/nuno/repos/pdp/grlib-gpl-1.1.0-b4104/designs/leon3-xilinx-ml410/leon3mp.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/nuno/repos/pdp/grlib-gpl-1.1.0-b4104/designs/leon3-xilinx-ml410} {../../netlists/xilinx/Virtex4} }
set_property target_constrs_file "leon3mp.ucf" [current_fileset -constrset]
add_files [list {leon3mp.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "/home/nuno/repos/pdp/grlib-gpl-1.1.0-b4104/designs/leon3-xilinx-ml410/leon3mp.ncd"
if {[catch {read_twx -name results_1 -file "/home/nuno/repos/pdp/grlib-gpl-1.1.0-b4104/designs/leon3-xilinx-ml410/leon3mp.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"/home/nuno/repos/pdp/grlib-gpl-1.1.0-b4104/designs/leon3-xilinx-ml410/leon3mp.twx\": $eInfo"
}
