#!/bin/sh
RESULT=""
for arg
do
if [[ "" != "$arg" ]] && [[ -e $arg ]];
then
	TEMP=`cygpath -wa "$arg"`
	OUT="'$TEMP'"
else
	OUT=$arg
if [[ $arg == -* ]];
then
	OUT=$arg
else
	OUT="'$arg'"
fi
fi
RESULT=$RESULT" "$OUT
done
/cygdrive/c/Program\ Files\ \(x86\)/KDiff3/kdiff3.exe $RESULT