#!/bin/bash
make clean_distribute
start_time=$(date +%s)
echo "################################################################################"
echo "Start time: $(date)"
echo "################################################################################"

make make_distribute | tee 1-1_make_distribute.log
make run_distribute | tee 1-2_run_distribute.log

end_time=$(date +%s)
echo "################################################################################"
echo "End time: $(date)"
echo "################################################################################"
execution_time=$((end_time - start_time))
echo "Execution time: ${execution_time} seconds"
echo "################################################################################"