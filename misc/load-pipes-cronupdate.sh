#Generate pipelines
for i in {1001..1010}
do
  appName="loadapp$i"
  a=1
  for j in {1..2}
  do
    pipeName="pipe$j"
    fileName="$appName-$pipeName"
    echo "app $i , pipe $j"
    cp -r ../pipelines/$fileName.json > modify.json
    cat modify.json | jq '.triggers[].enabled = "true"' > cronenabled.json
    pipecron="0 0/$a * 1/1 * ? *"
    cat cronenabled.json | jq '.triggers[].cronExpression = "'"$pipecron"'"' > modified.json
    spin pi save -f modified.json --config config
    rm -rf modified.json cronenabled.json modify.json
    a=$((a+1))
  done
done




