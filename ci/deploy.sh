#!/bin/bash

set -exo pipefail

python3 -m pip install --index-url 'https://:2023-10-17T17:46:48.538593Z@time-machines-pypi.sealsecurity.io/' --upgrade twine wheel build
python3 -m build
python3 -m twine upload dist/* -u $PYPI_USERNAME -p $PYPI_PASSWORD --skip-existing
