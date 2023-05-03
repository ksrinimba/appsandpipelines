for i in {1..100}
do
   spin application save -f ../apps/loadapp$i.json --config config
done
