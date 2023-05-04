for i in {220..1000}
do
   spin application save -f ../apps/loadapp$i.json --config config
done
