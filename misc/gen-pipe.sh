#Generate pipelines
#for i in {1..1000}
#do
  appName="srinitest1"

  for j in {1..100}
  do
    pipeName="pipe$j"
    fileName="$appName-$pipeName"
    n=$(($j % 10))    
    groupName="group$n"
    #jqStr=".application = \"$appName\"|.name = \"$pipeName\"|.triggers[0].source = \"$pipeName\""
    jqStr=".application = \"$appName\"|.name = \"$pipeName\"|.triggers[0].source = \"$groupName\""
    #jqStr=".application = \"$appName\"|.name = \"$pipeName\"|.triggers[0].source = \"$groupName\"|.roles[0] = \"$pipeName\""
    cat pipe-with-role.json | jq "$jqStr" > ../pipelines/$fileName.json
  done  
#done  




