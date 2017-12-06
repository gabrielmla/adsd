for i in {1..1000}
	do

  		curl -X "DELETE" localhost:3000/depositApi/$i 

	done
