#!/bin/bash
printFunction () {
echo "Function with no params"
}

paramFunction() {
echo "The first paramiter was as follows"
echo $1
}
# Will print the message defined
printFunction
# will print the string "one"
paramFunction one