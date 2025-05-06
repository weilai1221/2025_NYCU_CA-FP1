#!/bin/bash
make clean_quantify
touch ./quantify_result/final_result.txt
start_time=$(date +%s)
echo "################################################################################"
echo "Start time: $(date)"
echo "################################################################################"

make make_quantify | tee 4-1_make_quantify.log
make run_quantify | tee 4-2_run_quantify.log

end_time=$(date +%s)
echo "################################################################################"
echo "End time: $(date)"
echo "################################################################################"
execution_time=$((end_time - start_time))
echo "Execution time: ${execution_time} seconds"
echo "################################################################################"