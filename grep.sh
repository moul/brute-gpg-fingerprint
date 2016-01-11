#!/bin/bash

KEYS=$(ls output)

echo 42 or 1337
echo "${KEYS}" | egrep --color=yes '1337'
echo "${KEYS}" | egrep --color=yes '0FF1C[E3]'
echo "${KEYS}" | egrep --color=yes '4B1D'
echo "${KEYS}" | egrep --color=yes 'B[A4]DC0D[E3]'
echo "${KEYS}" | egrep --color=yes 'B[4A]DF00D'
echo "${KEYS}" | egrep --color=yes 'B[4A]DC[4A]F[E3]'
echo "${KEYS}" | egrep --color=yes 'D[E3][A4]DB[E3][E3]F'
echo "${KEYS}" | egrep --color=yes 'F[E3][E3]1B[4A]D'
echo "${KEYS}" | egrep --color=yes 'D[E3][A4]DF[E3][E3]D'
echo "${KEYS}" | egrep --color=yes 'B[4A]B[3E]'
echo "${KEYS}" | egrep --color=yes 'D[3E]F[4A]C[E3]'
echo "${KEYS}" | egrep --color=yes '8173'
echo "${KEYS}" | egrep --color=yes 'C001'
echo "${KEYS}" | egrep --color=yes '[5S]002[3E]2'
echo "${KEYS}" | egrep --color=yes 'ABCDE'
echo "${KEYS}" | egrep --color=yes 'EDCBA'
echo "${KEYS}" | egrep --color=yes '12345'
echo "${KEYS}" | egrep --color=yes '54321'
echo "${KEYS}" | egrep --color=yes '^4242'
echo "${KEYS}" | egrep --color=yes '4242$'
echo "${KEYS}" | egrep --color=yes '^0000'
echo "${KEYS}" | egrep --color=yes '0000$'
echo "${KEYS}" | egrep 88 | egrep 25 | egrep  01 | egrep --color=yes '(25|01|88)' # birthdate
echo

if [ "1" = "0" ]; then
    echo hexspeaks
    for word in $(cat hexspeak | sed '/...../!d'); do
        echo "${KEYS}" | egrep --color=yes $word
    done
    echo
fi


echo redundants
echo ==========

#echo "- ABAB"
#echo "- AA"
#echo "${KEYS}" | egrep --color=yes '([0-9A-F]{2})\1'
#echo "${KEYS}" | egrep --color=yes '([0-9A-F])\1'
#echo

#echo "- AAA"
#echo "${KEYS}" | egrep --color=yes '([0-9A-F])\1{2}'

#echo "- ABCABC"
#echo "${KEYS}" | egrep --color=yes '([0-9A-F]{3})\1'

#echo "- ABCABCABC"
#echo "${KEYS}" | egrep --color=yes '([0-9A-F]{3})\1{2}'

echo "- ABCDABCD"
echo "${KEYS}" | egrep --color=yes '([0-9A-F]{4})\1'

#echo "- AABBCC"
#echo "${KEYS}" | egrep --color=yes '([0-9A-F])\1([0-9A-F])\2([0-9A-F])\3'

echo "- AABBBBCC"
echo "${KEYS}" | egrep --color=yes '([0-9A-F])\1([0-9A-F])\2{3}([0-9A-F])\3'

echo "- AAAABBCC"
echo "${KEYS}" | egrep --color=yes '([0-9A-F])\1{3}([0-9A-F])\2([0-9A-F])\3'

echo "- AABBCCCC"
echo "${KEYS}" | egrep --color=yes '([0-9A-F])\1([0-9A-F])\2([0-9A-F])\3{3}'

#echo "- ABCDDABC"
#echo "${KEYS}" | egrep --color=yes '([0-9A-F]{3})([0-9A-F]{2})\1'

echo "- AABBBCCC"
echo "${KEYS}" | egrep --color=yes '([0-9A-F])\1([0-9A-F])\2{2}([0-9A-F])\3{2}'

echo "- AAABBBCC"
echo "${KEYS}" | egrep --color=yes '([0-9A-F])\1{2}([0-9A-F])\2{2}([0-9A-F])\3'

echo "- AAABBCCC"
echo "${KEYS}" | egrep --color=yes '([0-9A-F])\1{2}([0-9A-F])\2([0-9A-F])\3{2}'

echo "- AABBCCDD"
echo "${KEYS}" | egrep --color=yes '([0-9A-F])\1([0-9A-F])\2([0-9A-F])\3([0-9A-F])\4'

echo "- xxxxAAAA"
echo "${KEYS}" | egrep --color=yes '([0-9A-F])\1{3}$'

echo "- AAAAxxxx"
echo "${KEYS}" | egrep --color=yes '^([0-9A-F])\1{3}'

echo "- AAAAA"
echo "${KEYS}" | egrep --color=yes '([0-9A-F])\1{4}'

echo "- AAAAAA"
echo "${KEYS}" | egrep --color=yes '([0-9A-F])\1{5}'

echo "- AAAAAAA"
echo "${KEYS}" | egrep --color=yes '([0-9A-F])\1{6}'
echo

printf "Total keys: %d\n" $(echo "${KEYS}" | wc -l)
du -hs output
