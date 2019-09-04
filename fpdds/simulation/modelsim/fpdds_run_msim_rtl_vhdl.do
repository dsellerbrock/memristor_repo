transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/poker/Documents/Projects/Research/memristor-repo/fpdds/mymult1.vhd}
vcom -2008 -work work {C:/Users/poker/Documents/Projects/Research/memristor-repo/fpdds/divider2.vhd}
vcom -2008 -work work {C:/Users/poker/Documents/Projects/Research/memristor-repo/fpdds/SUB32.vhd}
vcom -2008 -work work {C:/Users/poker/Documents/Projects/Research/memristor-repo/fpdds/deltaT.vhd}
vcom -2008 -work work {C:/Users/poker/Documents/Projects/Research/memristor-repo/fpdds/rmin.vhd}
vcom -2008 -work work {C:/Users/poker/Documents/Projects/Research/memristor-repo/fpdds/rmax.vhd}
vcom -2008 -work work {C:/Users/poker/Documents/Projects/Research/memristor-repo/fpdds/muxMeUp.vhd}
vcom -2008 -work work {C:/Users/poker/Documents/Projects/Research/memristor-repo/fpdds/add32.vhd}
vcom -2008 -work work {C:/Users/poker/Documents/Projects/Research/memristor-repo/fpdds/regy.vhd}
vcom -2008 -work work {C:/Users/poker/Documents/Projects/Research/memristor-repo/fpdds/fpCompareGreat.vhd}
vcom -2008 -work work {C:/Users/poker/Documents/Projects/Research/memristor-repo/fpdds/fpCompareLess.vhd}
vcom -2008 -work work {C:/Users/poker/Documents/Projects/Research/memristor-repo/fpdds/compEqual.vhd}
vcom -2008 -work work {C:/Users/poker/Documents/Projects/Research/memristor-repo/fpdds/absolutely.vhd}
vcom -2008 -work work {C:/Users/poker/Documents/Projects/Research/memristor-repo/fpdds/alpha.vhd}
vcom -2008 -work work {C:/Users/poker/Documents/Projects/Research/memristor-repo/fpdds/beta.vhd}
vcom -2008 -work work {C:/Users/poker/Documents/Projects/Research/memristor-repo/fpdds/halfsies.vhd}
vcom -2008 -work work {C:/Users/poker/Documents/Projects/Research/memristor-repo/fpdds/threshold.vhd}
vcom -2008 -work work {C:/Users/poker/Documents/Projects/Research/memristor-repo/fpdds/Vtebe.vhd}
vcom -2008 -work work {C:/Users/poker/Documents/Projects/Research/memristor-repo/fpdds/CLK1Const.vhd}
vcom -2008 -work work {C:/Users/poker/Documents/Projects/Research/memristor-repo/fpdds/CLK2Const.vhd}
vcom -2008 -work work {C:/Users/poker/Documents/Projects/Research/memristor-repo/fpdds/RTOTConst.vhd}
vcom -2008 -work work {C:/Users/poker/Documents/Projects/Research/memristor-repo/fpdds/R2Const.vhd}
vcom -2008 -work work {C:/Users/poker/Documents/Projects/Research/memristor-repo/fpdds/PavThresh.vhd}

