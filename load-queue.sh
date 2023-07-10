#!/bin/bash

# chapter 12 p 146

curl -X PUT localhost:8080/memq/server/queues/keygen # create work queue

# create work items and load the queue
for i in work-item-{0..99}; do
    curl -X POST localhost:8080/memq/server/queues/keygen/enqueue -d "$i"
done
