declare -A benchmark
#######################################               要跑的架構名稱(這個需要其他的文件，可以看下面哪裡有用到arch_name)        ###############################################

arch_name=("L2PQ") ###"baseline" "baseline(L1*2)""baseline(L2*4)" "L2PQ" "L1bpass"
#######################################                          benchmark 的參數放在這裡                                    ###############################################
benchmark[0,0]="BFS"                   benchmark[0,1]=~/ispass2009-benchmarks/bin/release/BFS                                               benchmark[0,2]=~/ispass2009-benchmarks/BFS/data/graph65536.txt benchmark[0,3]="" benchmark[0,4]="" benchmark[0,5]="" benchmark[0,6]="" benchmark[0,7]="" benchmark[0,8]="" benchmark[0,9]="" benchmark[0,10]=""
#benchmark[1,0]="2DC"                   benchmark[1,1]=~/gpgpu-sim_simulations/benchmarks/bin/4.2/release/polybench-2DConvolution            benchmark[1,2]="" benchmark[1,3]="" benchmark[1,4]="" benchmark[1,5]="" benchmark[1,6]="" benchmark[1,7]="" benchmark[1,8]="" benchmark[1,9]="" benchmark[1,10]=""
benchmark[2,0]="alignedTypes"          benchmark[2,1]=~/gpgpu-sim_simulations/benchmarks/bin/4.2/release/alignedTypes                       benchmark[2,2]="" benchmark[2,3]="" benchmark[2,4]="" benchmark[2,5]="" benchmark[2,6]="" benchmark[2,7]="" benchmark[2,8]="" benchmark[2,9]="" benchmark[2,10]=""
benchmark[3,0]="atax"                  benchmark[3,1]=~/gpgpu-sim_simulations/benchmarks/bin/4.2/release/polybench-atax                     benchmark[3,2]="" benchmark[3,3]="" benchmark[3,4]="" benchmark[3,5]="" benchmark[3,6]="" benchmark[3,7]="" benchmark[3,8]="" benchmark[3,9]="" benchmark[3,10]=""
benchmark[4,0]="b+tree"                benchmark[4,1]=~/gpgpu-sim_simulations/benchmarks/bin/4.2/release/b+tree-rodinia-3.1                 benchmark[4,2]="file" benchmark[4,3]=~/task/benchmark_data/b+tree-rodinia-3.1/data/mil.txt benchmark[4,4]="command" benchmark[4,5]=~/task/benchmark_datab/+tree-rodinia-3.1/data/command.txt benchmark[4,6]="" benchmark[4,7]="" benchmark[4,8]="" benchmark[4,9]="" benchmark[4,10]=""
## benchmark[5,0]="backpro"               benchmark[5,1]=~/gpgpu-sim_simulations/benchmarks/bin/4.2/release/backprop-rodinia-3.1               benchmark[5,2]="65536" benchmark[5,3]="" benchmark[5,4]="" benchmark[5,5]="" benchmark[5,6]="" benchmark[5,7]="" benchmark[5,8]="" benchmark[5,9]="" benchmark[5,10]=""
## benchmark[6,0]="parboil-sad"           benchmark[6,1]=~/gpgpu-sim_simulations/benchmarks/bin/4.2/release/parboil-sad                        benchmark[6,2]="-i"  benchmark[6,3]=/root/gpgpu-sim_simulations/benchmarks/src/cuda/parboil/datasets/sad/default/input/reference.bin,/root/gpgpu-sim_simulations/benchmarks/src/cuda/parboil/datasets/sad/default/input/frame.bin  benchmark[6,4]=""  benchmark[6,5]=""  benchmark[6,6]=""  benchmark[6,7]=""  benchmark[6,8]=""  benchmark[6,9]=""  benchmark[6,10]=""  
benchmark[7,0]="PF"                    benchmark[7,1]=~/gpgpu-sim_simulations/benchmarks/bin/4.2/release/particlefilter_float-rodinia-3.1   benchmark[7,2]="-x"  benchmark[7,3]="128"  benchmark[7,4]="-y"  benchmark[7,5]="128"  benchmark[7,6]="-z"  benchmark[7,7]="10"  benchmark[7,8]="-np"  benchmark[7,9]="1000"  benchmark[7,10]=""  
benchmark[8,0]="mvt"                   benchmark[8,1]=~/gpgpu-sim_simulations/benchmarks/bin/4.2/release/polybench-mvt                      benchmark[8,2]=""  benchmark[8,3]=""  benchmark[8,4]=""  benchmark[8,5]=""  benchmark[8,6]=""  benchmark[8,7]=""  benchmark[8,8]=""  benchmark[8,9]=""  benchmark[8,10]=""  
benchmark[9,0]="radixsortthrust"       benchmark[9,1]=~/gpgpu-sim_simulations/benchmarks/bin/4.2/release/radixSortThrust                    benchmark[9,2]="" benchmark[9,3]=""  benchmark[9,4]=""  benchmark[9,5]=""  benchmark[9,6]=""  benchmark[9,7]=""  benchmark[9,8]=""  benchmark[9,9]=""  benchmark[9,10]=""  
benchmark[10,0]="parboil-spmv"         benchmark[10,1]=~/gpgpu-sim_simulations/benchmarks/bin/4.2/release/parboil-spmv                      benchmark[10,2]="-i" benchmark[10,3]=/root/gpgpu-sim_simulations/benchmarks/src/cuda/parboil/datasets/spmv/medium/input/bcsstk18.mtx,/root/gpgpu-sim_simulations/benchmarks/src/cuda/parboil/datasets/spmv/medium/input/vector.bin benchmark[10,4]="" benchmark[10,5]="" benchmark[10,6]="" benchmark[10,7]="" benchmark[10,8]="" benchmark[10,9]="" benchmark[10,10]="" 
benchmark[11,0]="streamcluster"   benchmark[11,1]=~/gpgpu-sim_simulations/benchmarks/bin/4.2/release/streamcluster-rodinia-3.1         benchmark[11,2]="10" benchmark[11,3]="20" benchmark[11,4]="256" benchmark[11,5]="65536" benchmark[11,6]="65536" benchmark[11,7]="1000" benchmark[11,8]="none" benchmark[11,9]="output.txt" benchmark[11,10]="1" 
## benchmark[12,0]="matrixMul"            benchmark[12,1]=~/gpgpu-sim_simulations/benchmarks/bin/4.2/release/matrixMul                         benchmark[12,2]=""      benchmark[12,3]="" benchmark[12,4]="" benchmark[12,5]="" benchmark[12,6]="" benchmark[12,7]="" benchmark[12,8]="" benchmark[12,9]="" benchmark[12,10]=""
## benchmark[13,0]="parboil-cutcp"        benchmark[13,1]=~/gpgpu-sim_simulations/benchmarks/bin/4.2/release/parboil-cutcp                     benchmark[13,2]="-i" benchmark[13,3]=/root/gpgpu-sim_simulations/benchmarks/src/cuda/parboil/datasets/cutcp/small/input/watbox.sl40.pqr benchmark[13,4]="" benchmark[13,5]="" benchmark[13,6]="" benchmark[13,7]="" benchmark[13,8]="" benchmark[13,9]="" benchmark[13,10]=""
## benchmark[14,0]="parboil-lbm"          benchmark[14,1]=~/gpgpu-sim_simulations/benchmarks/bin/4.2/release/parboil-lbm                       benchmark[14,2]="-i" benchmark[14,3]=~/gpgpu-sim_simulations/benchmarks/src/cuda/parboil/datasets/lbm/short/input/120_120_150_ldc.of benchmark[14,4]="--" benchmark[14,5]="100" benchmark[14,6]="" benchmark[14,7]="" benchmark[14,8]="" benchmark[14,9]="" benchmark[14,10]=""
## benchmark[15,0]="srad_v2"              benchmark[15,1]=~/gpgpu-sim_simulations/benchmarks/bin/4.2/release/srad_v2-rodinia-3.1               benchmark[15,2]="512" benchmark[15,3]="512" benchmark[15,4]="0" benchmark[15,5]="127" benchmark[15,6]="0" benchmark[15,7]="127" benchmark[15,8]="0.5" benchmark[15,9]="2" benchmark[15,10]=""
for arch in ${arch_name[*]} 
do 
   cp -r /root/task/CSV_format /root/task/CSV
   for ((i=0 ; i<=15 ; i=i+1)) 
   do
      benchmark_name="${benchmark[${i},0]}_${arch}"
      benchmark_path=${benchmark[${i},1]}
      variable1=${benchmark[${i},2]}
      variable2=${benchmark[${i},3]}
      variable3=${benchmark[${i},4]}
      variable4=${benchmark[${i},5]}
      variable5=${benchmark[${i},6]}
      variable6=${benchmark[${i},7]}
      variable7=${benchmark[${i},8]}
      variable8=${benchmark[${i},9]}
      variable9=${benchmark[${i},10]} 
      cp /root/task/CSV/output_format.csv /root/task/CSV/output_collect.csv
      # ####################   Run baseline archtecture (with L1*2 or L2*4)  #################
      if [ ${arch} == "baseline" ] || [ ${arch} == "baseline(L1*2)" ] || [ ${arch} == "baseline(L2*4)" ]; then
         if [ ${arch} == "baseline" ] ;then        #baseline archtecture
             bash /root/task/run_script/Bash/change_file_bash/origin/change_file\(baseline\).bash
         elif [ ${arch} == "baseline(L1*2)" ];then #baseline archtecture with 2 time of L1D cache 
            bash /root/task/run_script/Bash/change_file_bash/origin/change_file\(baseline_L1\*2\).bash
         else                                      #baseline archtecture with 4 time of L2 cache 
            bash /root/task/run_script/Bash/change_file_bash/origin/change_file\(baseline_L2\*4\).bash
         fi
         bash /root/task/run_script/Bash/collect_data_bash/origin/run_benchmark.bash  ${benchmark_name} ${benchmark_path} ${variable1} ${variable2} ${variable3} ${variable4} ${variable5} ${variable6} ${variable7} ${variable8} ${variable9}
      elif [ ${arch} == "L1bpass" ];then
         bash /root/task/run_script/Bash/change_file_bash/L1bypass/change_file.bash
         bash /root/task/run_script/Bash/collect_data_bash/L1bypass/run_benchmark.bash  ${benchmark_name} ${benchmark_path} ${variable1} ${variable2} ${variable3} ${variable4} ${variable5} ${variable6} ${variable7} ${variable8} ${variable9}
      elif [ ${arch} == "L1VC" ];then  ###################   Run L1VC archtecture   #################
         bash /root/task/run_script/Bash/change_file_bash/L1VC/change_file.bash
         bash /root/task/run_script/Bash/collect_data_bash/L1VC/run_benchmark.bash  ${benchmark_name} ${benchmark_path} ${variable1} ${variable2} ${variable3} ${variable4} ${variable5} ${variable6} ${variable7} ${variable8} ${variable9}
      elif [ ${arch} == "L2VC" ];then
         bash /root/task/run_script/Bash/change_file_bash/L2VC/change_file.bash
         bash /root/task/run_script/Bash/collect_data_bash/L2VC/run_benchmark.bash  ${benchmark_name} ${benchmark_path} ${variable1} ${variable2} ${variable3} ${variable4} ${variable5} ${variable6} ${variable7} ${variable8} ${variable9}
      elif [ ${arch} == "L2PQ" ];then ###################   Run L2VC archtecture  #################
         bash /root/task/run_script/Bash/change_file_bash/L2_PQueue/change_file.bash
         bash /root/task/run_script/Bash/collect_data_bash/L2_PQueue/run_benchmark.bash  ${benchmark_name} ${benchmark_path} ${variable1} ${variable2} ${variable3} ${variable4} ${variable5} ${variable6} ${variable7} ${variable8} ${variable9}
      fi

      rm _cuobjdump_*
      mv /root/task/CSV/output_collect.csv /root/task/CSV/${benchmark_name}.csv
   done
   mv  /root/task/CSV /root/task/"CSV_${arch}"
done