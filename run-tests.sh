#!/bin/bash

mkdir test_saltpepper
cd test_saltpepper
echo $pwd
for FILE in ../dataset/*; do ../pdi $FILE color 7; done

mkdir ../test_color
cd ../test_color
echo $pwd
for FILE in ../dataset/*; do ../pdi $FILE color 5; ../pdi $FILE color 4; ../pdi $FILE color 6; done
