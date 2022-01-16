#!/bin/bash
shodan
echo "Enter what you want to search: "
read term
echo "Enter the limit of search queries: "
read limit
echo "Enter your api key here: "
read apikey
shodan init $apikey
shodan download --limit $limit shodan_results $term has_screenshot:true
./get_images.py shodan_results.json.gz images/
