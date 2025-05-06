#!/bin/bash
make clean_index
touch ./index_result/hash-map.txt
start_time=$(date +%s)
echo "################################################################################"
echo "Start time: $(date)"
echo "################################################################################"

make make_index | tee 3-1_make_index.log
make run_index | tee 3-2_run_index.log

end_time=$(date +%s)
echo "################################################################################"
echo "End time: $(date)"
echo "################################################################################"
execution_time=$((end_time - start_time))
echo "Execution time: ${execution_time} seconds"
echo "################################################################################"