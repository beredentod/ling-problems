# ling-problems
A TeX tool for writing and formatting linguistics problems, based on International Linguistics Olympiad's format

## Installing
**Please not that that the class ```lingproblems.cls``` is just a _beta_ version and is not fully stable.**

Please use the package ```lingproblems.sty``` instead.

If you don’t install the package on your local computer to make it accessible for all the files,
TeX will automatically look for the ```.sty``` file in your local folder, in which you store your
main ```.tex``` file. It means that you should save ```.sty``` file in this folder.

Otherwise, I'd recommend typing in Google: 'how to install a .sty package on $your operating system$'.
This question is answered for sure.
Althoug the general way to do it, is to make a new directory with the name of the package, i.e.
```lingproblems```, in the path where other directories of other packages are stored. Then copy
the ```.sty``` file to the newly created directory. After that you will need to update the whole
with directories. On UNIX-based suystems it can be done with
```
$ sudo mktexlsr
```
or something similar.

## Usage

Please view the file ```manual.pdf``` in which I demonstrate how to use the package ```lingproblems.sty```.

