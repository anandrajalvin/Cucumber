#!/bin/bash

# variables
YELLOW='\033[1;33m'
RED='\033[1;31m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
RR="ruby --version"
CC="cucumber --version"

if ! [[ "$($RR)" ]]; then
	exit
fi

if ! [[ "$($CC)" ]]; then
	exit
fi

sleept=180
rerun=0

# list of feature files
declare -a features=("web")

sleep 2
rm -f $DIR/reports/large_product_report*.html

declare -g -a failedFeatures

for folder in ${features[@]}
do
	echo -e "=> ${YELLOW}Working on folder ${BLUE}$folder \n"

	if [[ $folder == "self" ]]; then
		feature_dir=$DIR/features
	else
		feature_dir=$DIR/features/$folder
	fi

	for feature in "$feature_dir"/*.feature
	do
		feature_file=$(basename "$feature")
		file_name="${feature_file%.*}"


		echo -e "${YELLOW}Starting Cucumber Single Thread for file ${BLUE}$file_name ${YELLOW} as json_report \n"
		result_file_name=cucumber_$file_name_$(date "+%s_%N")

		mkdir -p reports

		bundle exec cucumber $feature --format json --out $DIR/reports/$result_file_name.json
		echo -e "${YELLOW}Automated ran for ${BLUE}$file_name ${BLUE}feature \n"

		fail_count=$(grep failed $DIR/reports/cucumber*.json | wc -l)
		error_count=$(grep error_message $DIR/reports/cucumber*.json | wc -l)

		if [[ $fail_count -ge 1 ]] && [[ $error_count -ge 1 ]]; then
			echo -e "${RED}Test Failed for ${BLUE}$feature ${RED}feature \n"
			failedFeatures+=("features/$folder/$feature_file")
		else
			echo -e "${GREEN}Test Passed for $file_name ${GREEN}feature \n"
		fi

	done
done


if [[ "${#failedFeatures[@]}" -gt 0 ]]; then
	echo -e ${failedFeatures[@]} >> "$DIR/failedFeatures.txt"
	echo -e $(date '+%Y-%m-%d_%H:%M:%S') >> "$DIR/failedFeatures.txt"
fi


sleep 1



bash $DIR/generate_report.sh

