chmod +x ./bin/build-packages.sh
chmod +x ./bin/compare-sha.sh

./bin/build-packages.sh
echo "Comparing sha values..."
./bin/compare-sha.sh
echo "Done !"