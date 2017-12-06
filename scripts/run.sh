echo "Starting..."
sleep 1s

for i in {1..30} 
	do
		echo "LOOP E$i"
		echo "Reseting counters..."
		curl -X POST localhost:3000/depositApi/resetCounter
		sleep 1s

		echo "Post 50"
		source ./req_post_50.sh
		echo "Post 50 DONE"

		echo "Post 150"
		source ./req_post_150.sh
		echo "Post 150 DONE"

		echo "Put 50"
		source ./req_put_50.sh
		echo "Put 50 DONE"

		echo "Put 150"
		source ./req_put_150.sh
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

echo "END"
