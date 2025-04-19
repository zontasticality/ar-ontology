#!/bin/sh
inotifywait -mr -e modify -e delete ./data | while read line; do
	cosma modelize
done
