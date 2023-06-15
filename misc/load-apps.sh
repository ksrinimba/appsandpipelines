for i in {1..10}
do
   echo "Loading app $i"
   spin -k app save -f ../apps/loadapp$i.json  --retry-timeout 1200 &
done
echo sleeping....
sleep 3600
