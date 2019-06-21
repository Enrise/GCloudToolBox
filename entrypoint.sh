#!/bin/sh

echo "  ______ _   _ _____     ____  ______   _      _____ ______ ______"
echo " |  ____| \ | |  __ \   / __ \|  ____| | |    |_   _|  ____|  ____|"
echo " | |__  |  \| | |  | | | |  | | |__    | |      | | | |__  | |__"
echo " |  __| | . \` | |  | | | |  | |  __|   | |      | | |  __| |  __|"
echo " | |____| |\  | |__| | | |__| | |      | |____ _| |_| |    | |____"
echo " |______|_| \_|_____/   \____/|_|      |______|_____|_|    |______|"
echo ""
echo "This container is deprecated in favour of enrise/kube-toolbox".
echo "Please migrate to enrise/kube-toolbox for added features and ongoing support."
echo ""

sleep 10

$@
exit $?
