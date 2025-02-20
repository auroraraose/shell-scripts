#/bin/bash

a=0
b=1
read -p " enter"  n

echo "Fibonacci Series:"

for (( i=0; i<n; i++ ))
do
  echo -n "$a "
  fn=$((a + b))
  a=$b
  b=$fn
done

echo "hello world"
