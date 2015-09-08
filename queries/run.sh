impala-shell -i hsw-node14 -q "use tpch;"

for i in {1..22}
do
impala-shell -i hsw-node14 -f tpch-q"$i".test -o logs/q"$i"_result 2>&1 |tee logs/q"$i".log
done
