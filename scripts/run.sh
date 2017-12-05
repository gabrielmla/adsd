echo "Starting"
sleep 1s

echo "Post 50"
source ./req_post_50.sh
echo "Post 50 DONE"

echo "Post 250"
source ./req_post_250.sh
echo "Post 250 DONE"

echo "Put 50"
source ./req_put_50.sh
echo "Put 50 DONE"

echo "Put 250"
source ./req_put_250.sh
echo "Put 250 DONE"

echo "END"