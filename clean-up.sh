#!/bin/sh
/workspaces/CodeSpaceTest/scripts/telegraph.sh
id=$(cat /workspaces/CodeSpaceTest/extension-test/participant_id.txt)
rm -rf /workspaces/CodeSpaceTest/extension-test/$id-*
rm -rf /workspaces/CodeSpaceTest/extension-test/.history
rm -rf /workspaces/CodeSpaceTest/extension-test/keystrokes.txt
rm -rf /workspaces/CodeSpaceTest/extension-test/manual
rm -rf /workspaces/CodeSpaceTest/extension-test/raw