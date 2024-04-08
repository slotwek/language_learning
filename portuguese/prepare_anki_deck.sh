#!/bin/bash

sed -n "/[[:digit:]]/p" input.txt | sed "s/^..*{/{{/" |\
    sed "s/Eu/eu/g; s/Tu/tu/g; s/El/el/; s/Nós/nós/; s/Vós/vós/g;
         s/eu -/01/g; s/tu -/02/g; s/ele -/03m/g; s/ela -/03f/g; s/nós -/11/g; s/vós -/12/g; s/eles -/13m/g; s/elas -/13f/g" >> output.txt

# sed  "s/^[^A-Z]*//" input.txt  | sed "s/\n\rEnglish//g"

