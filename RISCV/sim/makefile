
p_dir    := ./..
c_dir    := ${p_dir}/code
#p_top    := ${c_dir}/tb/core/tb_top.sv
p_top    := ${c_dir}/rtl/riscv_core.sv

test:
	echo ${c_dir}

lib_dir  :=  -y ${c_dir}	     \
	     -y ${c_dir}/rtl	     
             
inc_dir  :=	+incdir+${c_dir}/rtl/include \
		+incdir+${c_dir}/tb/tb_riscv/include
 	      

irun:
	irun -gui	\
	+libext+.v	\
	+libext+.sv	\
	-sv		\
	${inc_dir}	\
	${lib_dir}	\
	${p_top}	&

vcs:
	vcs -gui	\
	-debug_all	\
	-full64		\
	+libext+.v	\
	+libext+.sv	\
	-sverilog	\
	${inc_dir}	\
	${lib_dir}	\
	${p_top}	&

clean:
	-rm -rf INCA_libs irun.key *.log ncverilog.key waves.shm
