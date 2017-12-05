for i in {1..901}
	do

  		curl -X "DELETE" localhost:3000/depositApi/$i 

	done