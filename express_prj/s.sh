#!/bin/bash
        if [ -z "$1" ]; then
                node node_modules/forever/bin/forever start -l forever.log -o out.log -e err.log -a appjs/app.js	
        else
		node node_modules/forever/bin/forever start -l forever.log -o out.log -e err.log -a appjs/$1
		echo  $(ps -ef | grep node | sed -e '1,3!d' | wc -l)
                echo "already app is running"
        fi

	node node_modules/forever/bin/forever
