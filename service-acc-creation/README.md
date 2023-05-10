## Instructions for creating service accounts

Exec into Halyard pod, can copy-paste the script below

FRONT50=http://spin-front50:8080

for ((n=1;n<7500;n++))
do
echo $n
curl -X POST \
  -H "Content-type: application/json" \
  -d \{\"name\":\"srini-service-account$n\@spinnaker-test.net\",\"memberOf\":\[\"myApp-prod$n\",\"myApp-qa\"\]\} \
  $FRONT50/serviceAccounts
done

