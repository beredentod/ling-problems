
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# ling-problems
A TeX tool for writing and formatting linguistics problems based on International Linguistics Olympiad's format

## Installing
Please use the package ```lingproblems.sty``` instead.

If you do not install the package on your local computer to make it accessible for all further TeX files,
TeX will automatically look for the ```.sty``` file in your local folder in which you store your
main ```.tex``` file. It means that you should save ```.sty``` file in that directory.

Otherwise, I would recommend typing in your favourite web search engine: ''how to install a .sty package on $your operating system$''.
This question is answered for sure.
In spite of that, the general way to do it is to make a new directory with the name of the package, i.e.
```lingproblems```, in the path where other directories of other packages are stored. On my machine it is, for example: ```/usr/share/texlive/texmf-dist/tex/latex/```.  Then, copy
the ```.sty``` file to the newly created directory. After that, you will need to update the whole directory with all other TeX packages.
On UNIX-based systems it can be done with
```
$ sudo mktexlsr
```
or something similar.

## Usage

Please view the file ```manual.pdf``` in which I demonstrate how to use the package ```lingproblems.sty```.

