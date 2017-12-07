#!/bin/bash

echo "REQUEST,MOMENT,TIMESTAMP" >> "../results/req_post_150.csv"

for i in {0..300}
	do

  		echo "POST,BEGIN,"$(date +%s%N) >> "../results/req_post_150.csv"
  		curl -g -H "Content-Type:application/json" -X POST -d '{ "_place": "84826659", "_user": "1", "_material": "1" }' localhost:3000/depositApi/ >> "../results/db_post_150.csv"
  		echo "POST,END,"$(date +%s%N) >> "../results/req_post_150.csv"

  		sleep 0.4s
	done
