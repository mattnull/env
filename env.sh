#!/bin/bash

# Set your environments variables
envVars=(
	"DB=mongodb://localhost/"
	"PORT=3000"
)

setEnv () {
	cmd=""

	for i in "${envVars[@]}"
	do
		:
		cmd+=$i
		cmd+=" "
	done

	cmd+="node app.js"

	eval $cmd
	exit 0
}

setEnv

exit $?