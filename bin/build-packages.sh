cwd=$(pwd)

cd my_local_package

poetry install --sync
poetry build --format wheel

cd $cwd

cp my_local_package/dist/*.whl consumer_package/packages
echo "Python Package my_local_package successfully copied to consumer_package/packages"

cd consumer_package

poetry install --sync