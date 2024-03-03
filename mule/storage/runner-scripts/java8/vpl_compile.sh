#! /bin/bash
cat > vpl_execution <<EEOOFF
#! /bin/bash

javac <%- FILENAME %> &> grepLines.out

if (($? > 0)); then
    echo "Error compiling your program"
    cat grepLines.out
    exit
else
    echo "compiled: ==> true"
fi

EEOOFF

chmod +x vpl_execution