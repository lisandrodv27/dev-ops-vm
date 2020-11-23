#! /bin/bash

if ! which pytest > /dev/null; then

    sudo apt update -y
    sudo apt install python-pytest -y

else

    echo "Pytest is already installed"

fi

pytest --version