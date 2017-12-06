echo "Starting..."
sleep 1s

echo "1GB exec"
sleep 1s
for i in {1..11}
	do
		echo "LOOP $i"
		filename="$i"		
		
		echo "Reseting counters..."
		curl -X POST localhost:3000/depositApi/resetCounter
		sleep 1s

		echo "Post 50"
		cgexec -g memory:myGroup ./req_post_50.sh
		echo "Post 50 DONE"

		echo "Post 150"
		cgexec -g memory:myGroup ./req_post_150.sh
		echo "Post 150 DONE"

		echo "Put 50"
		cgexec -g memory:myGroup ./req_put_50.sh
		echo "Put 50 DONE"

		echo "Put 150"
		cgexec -g memory:myGroup ./req_put_150.sh
		echo "Put 150 DONE"

		echo "Deleting..."
		source ./delete_dep.sh
		echo "Delete DONE"

		echo "Saving results..."
		sleep 1s
        
		mkdir "../results/$filename/"
		mv "../results/req_post_50.csv" "../results/$filename/"
		mv "../results/db_post_50.csv" "../results/$filename/"
		mv "../results/req_post_150.csv" "../results/$filename/"
		mv "../results/db_post_150.csv" "../results/$filename/"
		mv "../results/req_put_50.csv" "../results/$filename/"
		mv "../results/db_put_50.csv" "../results/$filename/"
		mv "../results/req_put_150.csv" "../results/$filename/"
		mv "../results/db_put_150.csv" "../results/$filename/"
		echo "Saving DONE"
	done

echo "500MB exec"
sleep 1s
for i in {11..21}
	do
		echo "LOOP $I"		
		
		echo "Reseting counters..."
		curl -X POST localhost:3000/depositApi/resetCounter
		sleep 1s

		echo "Post 50"
		cgexec -g memory:myGroup500 ./req_post_50.sh
		echo "Post 50 DONE"

		echo "Post 150"
		cgexec -g memory:myGroup500 ./req_post_150.sh
		echo "Post 150 DONE"

		echo "Put 50"
		cgexec -g memory:myGroup500 ./req_put_50.sh
		echo "Put 50 DONE"

		echo "Put 150"
		cgexec -g memory:myGroup500 ./req_put_150.sh
		echo "Put 150 DONE"

		echo "Deleting..."
		source ./delete_dep.sh
		echo "Delete DONE"

		echo "Saving results..."
		mkdir -p "../results/E$i/"
		mv "../results/req_post_50.csv" "../results/E$i/"
		mv "../results/db_post_50.csv" "../results/E$i/"
		mv "../results/req_post_150.csv" "../results/E$i/"
		mv "../results/db_post_150.csv" "../results/E$i/"
		mv "../results/req_put_50.csv" "../results/E$i/"
		mv "../results/db_put_50.csv" "../results/E$i/"
		mv "../results/req_put_150.csv" "../results/E$i/"
		mv "../results/db_put_150.csv" "../results/E$i/"
		echo "Saving DONE"
	done
echo "Done 500MB exec."

echo "250MB exec"
sleep 1s
for i in {21..31}
	do
		echo "LOOP $I"		
		
		echo "Reseting counters..."
		curl -X POST localhost:3000/depositApi/resetCounter
		sleep 1s

		echo "Post 50"
		cgexec -g memory:myGroup250 ./req_post_50.sh
		echo "Post 50 DONE"

		echo "Post 150"
		cgexec -g memory:myGroup250 ./req_post_150.sh
		echo "Post 150 DONE"

		echo "Put 50"
		cgexec -g memory:myGroup250 ./req_put_50.sh
		echo "Put 50 DONE"

		echo "Put 150"
		cgexec -g memory:myGroup250 ./req_put_150.sh
		echo "Put 150 DONE"

		echo "Deleting..."
		source ./delete_dep.sh
		echo "Delete DONE"

		echo "Saving results..."
		mkdir -p "../results/E$i/"
		mv "../results/req_post_50.csv" "../results/E$i/"
		mv "../results/db_post_50.csv" "../results/E$i/"
		mv "../results/req_post_150.csv" "../results/E$i/"
		mv "../results/db_post_150.csv" "../results/E$i/"
		mv "../results/req_put_50.csv" "../results/E$i/"
		mv "../results/db_put_50.csv" "../results/E$i/"
		mv "../results/req_put_150.csv" "../results/E$i/"
		mv "../results/db_put_150.csv" "../results/E$i/"
		echo "Saving DONE"
	done
echo "Done 250MB exec."

echo "END"
