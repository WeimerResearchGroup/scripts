#!/bin/sh
time=$(date "+%F-%H-%M-%S")
id=$(cat /workspaces/CodeSpaceTest/extension-test/participant_id.txt)
zipfilename=$id-$time.zip
zip -r -j /workspaces/CodeSpaceTest/extension-test/$zipfilename /workspaces/CodeSpaceTest/extension-test/.history /workspaces/CodeSpaceTest/extension-test/keystrokes.txt /workspaces/CodeSpaceTest/extension-test/manual
scp /workspaces/CodeSpaceTest/extension-test/$zipfilename wenxinhe@liskov.eecs.umich.edu:backup/$id/
scp /workspaces/CodeSpaceTest/extension-test/$zipfilename wenxinhe@dijkstra.eecs.umich.edu:backup/$id/