for i in {1001..1010}
do
   echo "Loading app $i"
   spin application save -f ../apps/loadapp$i.json --config config
done
