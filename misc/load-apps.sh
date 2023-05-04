for i in {101..1000}
do
   spin application save -f ../apps/loadapp$i.json --config config
done
