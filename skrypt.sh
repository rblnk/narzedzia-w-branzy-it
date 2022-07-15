#!/bin/bash
argument=$1
if [[ "$argument" == "--date" ]]; then
    echo $(date)

elif [[ "$argument" == "--logs" && "$2" ]]; then
for ((x = 1 ; x < $2+1 ; x++)); do
echo log$x $0 $(date) > log$x.txt
done

elif [[ "$argument" == "--logs" ]]; then
for ((x = 1 ; x < 101 ; x++)); do
echo log$x $0 $(date) > log$x.txt
done

elif [[ "$argument" == "--help" ]]; then
echo 'Dostepne komendy'
echo '--date, wyswietli aktualna date'
echo '--logs, utworzy automatycznie 100 plikow logx.txt'
echo '--logs x, utworzy automatycznie x plikow logx.txt'
fi