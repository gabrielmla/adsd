#!/bin/bash

echo "REQUEST,MOMENT,TIMESTAMP" >> "../results/req_put_150.csv"

for i in {301..601}
	do

  		echo "PUT,BEGIN,"$(date +%s%N) >> "../results/req_put_150.csv"
  		curl -g -H "Content-Type:application/json" -X PUT -d '{ "_collector": "1", "weight": "1" }' localhost:3000/depositApi/confirm/$i >> "../results/db_put_150.csv"
  		echo "PUT,END,"$(date +%s%N) >> "../results/req_put_150.csv"

  		sleep 0.4s
	done
