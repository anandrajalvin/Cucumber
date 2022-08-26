#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
browser="Chromedriver-104.0.5112.79"
osname="Ubuntu 20.04.1 LTS "
version="1.2"


report_time=$(date +%Y/%m/%d)
report_filetime=$(date +%Y%m%d%H%M)
report_filename="$DIR/reports/large_product_report_$report_filetime"

report_builder -s $DIR/reports -o $report_filename -c "orange" --info "Report Created":"$report_time","OS":"$osname","Browser":"$browser","Product Version":"$version" --title "Large Product Automation Test Report"

files_location=$report_filename.html
rm -f $DIR/reports/cucumber*.json

echo $files_location