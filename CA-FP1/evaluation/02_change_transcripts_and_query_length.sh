#!/bin/bash

# A script to update the sequence counts in transcripts_data.h and query_data.h

# Change <num1> in ./transcripts_data.h
echo "####################################################################################################"
echo "Original ./transcripts_data.h:"
echo "----------------------------------------------------------------------------------------------------"
# Show first 3 lines
head -n 3 ./transcripts_data.h
echo "..."
echo "===================================================================================================="
# Prompt for new num1
read -p "Enter new transcript_sequences_count value: " new_num1
# Use sed to replace the value on line 1
sed -i "1s/\(int transcript_sequences_count = \)[0-9]\+;/\1${new_num1};/" ./transcripts_data.h
echo "===================================================================================================="
echo "New ./transcripts_data.h:"
echo "----------------------------------------------------------------------------------------------------"
# Show first 3 lines of updated file
head -n 3 ./transcripts_data.h
echo "..."
echo ""
echo ""
echo ""

echo "####################################################################################################"
# Change <num2> in ./query_data.h
echo "Original ./query_data.h:"
echo "----------------------------------------------------------------------------------------------------"
# Show first 3 lines
head -n 3 ./query_data.h
echo "..."
echo "===================================================================================================="
# Prompt for new num2
read -p "Enter new query_sequences_count value: " new_num2
# Use sed to replace the value on line 1
sed -i "1s/\(int query_sequences_count = \)[0-9]\+;/\1${new_num2};/" ./query_data.h
echo "===================================================================================================="
echo "New ./query_data.h:"
echo "----------------------------------------------------------------------------------------------------"
# Show first 3 lines of updated file
head -n 3 ./query_data.h
echo "..."
echo "####################################################################################################"
