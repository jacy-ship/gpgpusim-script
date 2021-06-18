rm ~/gpgpu-sim_distribution/src/gpgpu-sim/switch-config.h
cp ~/task/run_script/switch_config_file/origin/switch-config.h ~/gpgpu-sim_distribution/src/gpgpu-sim/switch-config.h
cp /root/task/run_script/Bash/change_file_bash/origin/gpgpusim\(baseline\).config /root/task/run_script/Bash/run_bash/gpgpusim.config

cd ~/gpgpu-sim_distribution/
make
cd ~/task/run_script/
