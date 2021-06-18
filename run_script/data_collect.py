import csv
import sys
output_data_file = open(str(sys.argv[1]))
output_data_lines = output_data_file.read().splitlines()
for a in range(len(output_data_lines)):
    output_data_lines[a]=  output_data_lines[a].split(' ')
with open('/root/task/CSV/output_collect.csv') as csvfile:
    reader = csv.reader(csvfile)
    ori_statistic_file = [each_row for each_row in reader]
with open('/root/task/CSV/output_collect.csv','w') as csvfile:
    statistic_data =['L1D_total_cache_accesses','L1D_total_cache_misses','L1D_total_cache_miss_rate',
    'L2_total_cache_accesses','L2_total_cache_misses','L2_total_cache_miss_rate',
    'gpu_stall_dramfull','gpu_stall_icnt2sh','gpgpu_n_stall_shd_mem',
    'Toal_L2toDRAM_stall:','Toal_L2toICNT_stall:','real_Toal_dataport_stall:','Toal_MSHR_stall:','Total_stall:',
    'gpu_tot_sim_cycle','gpu_tot_ipc','L1D_total_cache_reservation_fails','L1D_total_cache_pending_hits','L2_total_cache_reservation_fails','L2_total_cache_pending_hits',
    'L1VC_ACCESS','L1VC_HIT','L1VC_MISS','L1VC_RF','L2VC_ACCESS', 'L2VC_HIT' ,'L2VC_MISS','L2VC_RF','gpgpu_simulation_time','L1_div1_hit','L1_div2_hit','L1_div3_hit','L1_div4_hit',
    'L1VC_div1_hit','L1VC_div2_hit','L1VC_div3_hit','L1VC_div4_hit','L1_read_hit','L1_read_miss','L1_write_hit','L1_write_miss',
    'L1_bypass_read_request','L1_bypass_write_request','avg_finish_time_of_L1_miss_request','avg_finish_time_of_L1_div1_miss_request',
    'L2_response_request_size_0','L2_response_request_size_1','L2_response_request_size_2',
    'L2_div1_hit','L2_div2_hit','L2_div3_hit','L2_div4_hit',
    'L2VC_div1_hit','L2VC_div2_hit','L2VC_div3_hit','L2VC_div4_hit']
    div_data = [str(sys.argv[2]),'Request0','Request1','Request2','Request3','Request4',
    'L2Request0','L2Request1','L2Request2','L2Request3','L2Request4',
    'L1VC Request0','L1VC Request1','L1VC Request2','L1VC Request3','L1VC Request4',
    'warp_div','L2cache_line_hit','cache_line_hit']

    data_port_stall = 0
    data_port_and_ICNT_stall = 0
    ori_file_len=len(ori_statistic_file)
    writer = csv.writer(csvfile)
    benchmark = str(sys.argv[2])
    ori_statistic_file[0].append(benchmark)
    for each_line in range(len(output_data_lines)):
        for data_num in range(len(statistic_data)):
            if(output_data_lines[each_line][0] == statistic_data[data_num]):
                ori_statistic_file[data_num+1].append(output_data_lines[each_line][-1])    
    for each_line in range(len(output_data_lines)):
        if (output_data_lines[each_line][0] == 'Toal_dataport_stall:'):
            data_port_stall = output_data_lines[each_line][-1]
        if (output_data_lines[each_line][0] == 'Toal_L2toICNT&Dport:'):
            data_port_and_ICNT_stall = output_data_lines[each_line][-1]
    ori_statistic_file[12].append(int(data_port_stall)-int(data_port_and_ICNT_stall))
    q_stall_total = 0
    for q_statis in range(10,13):
        q_stall_total+=int(ori_statistic_file[q_statis][-1])
    ori_statistic_file[14].append(q_stall_total)
    for i in range(len(div_data)):
        ori_statistic_file.append([div_data[i]])
    for i in range(34):
        ori_statistic_file[ori_file_len].append(i)
    for j in range(len(div_data)-1):
        for i in range(34):
            ori_statistic_file[(ori_file_len+1)+j].append('')
    for j in range(16):
        x=j*34+3
        for i in range(34):
            ori_statistic_file[(ori_file_len+1)+j][i+1]=output_data_lines[x+i][-1]
            if((j==10) and (i==33)):
                ori_statistic_file[(ori_file_len+1)+j][i+1]= ''
    for j in range(2):
        for i in range(12):
           ori_statistic_file[-2+j][i+1] = output_data_lines[546+i+j*12][-1]
    for write_num in range(len(ori_statistic_file)):       
        writer.writerow(ori_statistic_file[write_num])