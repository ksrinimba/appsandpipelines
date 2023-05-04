for i in {1..1000}
do
   echo "Loading app $i"
   spin application save -f ../apps/loadapp$i.json --config config
done
