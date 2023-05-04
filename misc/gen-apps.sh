#Generate apps and pipelines
for i in {100..1000}
do
  appName="loadapp$i"
  jqStr=".name = \"$appName\""
  #echo $jqStr
  cat base-app.json | jq "$jqStr" > ../apps/$appName.json
done  




