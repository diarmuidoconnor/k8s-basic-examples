#!/bin/bash
i=1;
while [ $i -le 20 ]
do
  curl nginx-service:8081;
  i=$(( $i + 1 ));
done
