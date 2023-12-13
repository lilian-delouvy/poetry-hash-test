local_hash=$(sed -n 's|.*sha256:\([a-z0-9]\+\).*|\1|p' ./local-hash.txt)
pipeline_hash=$(sed -n 's|.*sha256:\([a-z0-9]\+\).*|\1|p' ./consumer_package/poetry.lock)

echo "Local hash : $local_hash"
echo "Pipeline hash : $pipeline_hash"

if [ "$local_hash" == "$pipeline_hash" ]; then
  echo "Hashes are equal."
else
  echo "Hashes are different."
fi
