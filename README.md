# 這裡面的shell script可以自動執行benchmark以及收集數據
用git clone記得把gpgpusim-script改成task，不然有些絕對路徑找不到

task資料夾裡面有二個資料夾:

1. CSV資料夾:

   1.1 收集模擬跑出來的數據，他會依據設計的模擬架構分別產出不同的資料夾。(例如baseline,L1 cache*2,bypass,etc)

2. run_script 資料夾:

   2.1. Bash 資料夾:
   
         2.1.1 change_file_bash 資料夾:
               會跑change_file.bash檔案，這個檔案會依據不同架構會換run_script/switch_config_file裡面不同的switch_config以及/Bash/change_file_bash/origin/裡面的gpgpusim.config。
         2.1.2 collect_data_bash 資料夾:
               run_benchmark.bash用來蒐集Result資料夾跑出來的重要數據。
         2.1.3 run_bash 資料夾:
               執行裡面的ex.bash(bash ex.bash)就會開始跑benchmark。(注意:要把gpgpusim.config檔案放在這裡面ex.bash才跑的起來 以及 每次重開terminal都要到gpgpu-sim_distribution內執行source setup_environment，不然有些路徑會找不到)
   2.2. switch_config_file 資料夾:
         放置不同架構的會用到的模組開關。
3. data_collect.py
   負責把蒐集來的數據寫到CSV裡面。
