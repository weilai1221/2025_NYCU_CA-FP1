#!/bin/bash
echo "Running all scripts in order..."
echo "Running 01_make_and_run_distribute..."
./01_make_and_run_distribute.sh
echo ""
echo "Running 02_change_transcripts_and_query_length..."
./02_change_transcripts_and_query_length.sh
echo ""
echo "Running 03_make_and_run_index..."
./03_make_and_run_index.sh
echo ""
echo "Running 04_make_and_run_qantify..."
./04_make_and_run_qantify.sh