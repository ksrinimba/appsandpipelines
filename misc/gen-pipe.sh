#Generate pipelines
for i in {1..100}
do
  appName="loadapp$i"

  for j in {1..4}
  do
    pipeName="pipe$j"
    fileName="loadapp$i-pipe$j"
    jqStr=".application = \"$appName\"|.name = \"$pipeName\""
    cat base-pipe.json | jq "$jqStr" > ../pipelines/$fileName.json
  done  
done  




