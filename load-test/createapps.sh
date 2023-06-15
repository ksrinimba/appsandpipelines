set -x
spin -k application save -f app-1.json --config ~/.spin/prodconfig2 &
spin -k application save -f app-2.json --config ~/.spin/prodconfig2 &
spin -k application save -f app-3.json --config ~/.spin/prodconfig2 &
spin -k application save -f app-4.json --config ~/.spin/prodconfig2 &
spin -k application save -f app-5.json --config ~/.spin/prodconfig2 &
sleep 3600
