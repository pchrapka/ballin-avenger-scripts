#! /bin/sh

mkdir pdf_files

{
    IFS=$'\n'
    for i in $( find . -type f -name '*.pdf' );
    do 
	echo Moving $i; 
	mv $i pdf_files/;
    done
}