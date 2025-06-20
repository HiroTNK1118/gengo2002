#!/bin/sh
FILENAME=$1
SPLITNAME=${FILENAME%\.*}
./znc < $FILENAME > ../znas/$SPLITNAME.s
cd ../znas
./znas < $SPLITNAME.s > ../p386/$SPLITNAME.p3
cd ../p386
./p386 $SPLITNAME.p3
cd ../zinc-0