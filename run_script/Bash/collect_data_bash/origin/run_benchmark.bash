Benchmark_name=$1
Benchmark_set=${Benchmark_name}
mkdir -p /root/task/Result/${Benchmark_name}
output_all_path="/root/task/Result/${Benchmark_name}/"output_${Benchmark_set}""
collect_data_path="/root/task/Result/${Benchmark_name}/"data_${Benchmark_set}""
timeout 2h $2 $3 $4 $5 $6 $7 $8 $9 ${10} ${11} &> ${output_all_path}
cat ${output_all_path} | grep "L1D_total_cache_accesses ="   | tail -1   | awk '{$1=$1};1'  &> ${collect_data_path}
cat ${output_all_path} | grep "L1D_total_cache_misses ="     | tail -1   | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L1D_total_cache_miss_rate ="  | tail -1   | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep -A 510 "L1D request hit statistic "   | tail -510   | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep -A 33 "div stat"               | tail -33  | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep -A 33 "L2_div_state"           | tail -33  | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L2CL_"                          | tail -12  | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "CL_"                          | tail -12  | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep -A 3 "L1VC_ACCESS"               | tail -4   | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep -A 3 "L2VC_ACCESS"               | tail -4   | awk '{$1=$1};1'  >> ${collect_data_path}

echo "----------------------------------------------------------------------" >>/root/task/Result/${Benchmark_name}/"data_${Benchmark_set}"
cat ${output_all_path} | grep "L2_total_cache_accesses ="    | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L2_total_cache_misses ="      | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L2_total_cache_miss_rate ="   | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
echo "----------------------------------------------------------------------" >>/root/task/Result/${Benchmark_name}/"data_${Benchmark_set}"
cat ${output_all_path} | grep "gpu_stall_dramfull ="         | tail -1   | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "gpu_stall_icnt2sh "           | tail -1   | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "gpgpu_n_stall_shd_mem"        | tail -1   | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep ": L2toDRAM_stall"             | tail -12  | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep  "Toal_L2toDRAM_stall:"         | tail -1   | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep  "Toal_L2toICNT_stall:"         | tail -1   | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep  "Toal_dataport_stall:"         | tail -1   | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep  "Toal_MSHR_stall:"         | tail -1   | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep  "Toal_L2toICNT&Dport:"         | tail -1   | awk '{$1=$1};1'  >> ${collect_data_path}
echo "----------------------------------------------------------------------" >>/root/task/Result/${Benchmark_name}/"data_${Benchmark_set}"
cat ${output_all_path} | grep "gpu_tot_sim_cycle ="          | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "gpu_tot_ipc ="                | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
echo "----------------------------------------------------------------------" >>/root/task/Result/${Benchmark_name}/"data_${Benchmark_set}"
cat ${output_all_path} | grep "L1D_total_cache_reservation_fails ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L1D_total_cache_pending_hits ="       | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L2_total_cache_reservation_fails ="   | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L2_total_cache_pending_hits ="        | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
echo "----------------------------------------------------------------------" >>/root/task/Result/${Benchmark_name}/"data_${Benchmark_set}"
cat ${output_all_path} | grep "gpgpu_simulation_time ="              | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}

cat ${output_all_path} | grep "L1_div1_hit ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L1_div2_hit ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L1_div3_hit ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L1_div4_hit ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L1VC_div1_hit ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L1VC_div2_hit ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L1VC_div3_hit ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L1VC_div4_hit ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L1_read_hit ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L1_read_miss ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L1_write_hit ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L1_write_miss ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L1_bypass_read_request ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L1_bypass_write_request ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "avg_finish_time_of_L1_miss_request = "  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "avg_finish_time_of_L1_div1_miss_request ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep  "L2_response_request_size_0"  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep  "L2_response_request_size_1"  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep  "L2_response_request_size_2"  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L2_div1_hit ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L2_div2_hit ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L2_div3_hit ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L2_div4_hit ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L2VC_div1_hit ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L2VC_div2_hit ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L2VC_div3_hit ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}
cat ${output_all_path} | grep "L2VC_div4_hit ="  | tail -1 | awk '{$1=$1};1'  >> ${collect_data_path}

echo "----------------------------------------------------------------------" >>/root/task/Result/${Benchmark_name}/"data_${Benchmark_set}"
cat ${collect_data_path}

python /root/task/run_script/data_collect.py ${collect_data_path} ${Benchmark_set} 
