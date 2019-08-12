To submit a number of iterations of structure for a given k, submit 'structure_array_nok.sh' to the queue system by:
```
qsub structure_array_k1.sh
```
Before you do though, there are some things you should tweak!

# PBS options

Change nok to the number of k you are running for all instances this occurs. You'll need a separate structure_nok file for each k you want to test.

-l depending on your test runs of individual structure iterations, you might want to bump up the memory and/or walltime

-M  you'll probably want to change this to your address...

-t you want the upper number in this range to be one less than the number of iterations you would like e.g. 19 if you want 20 iterations (0 counts)

-d pathway to your directory

#Structure options

-m rename this to whatever your paramfile is actually called.  If your extraparams file is not just called 'extraparams', you'll also need to add a -e flag and the extraparam file name

-k, -o options: you'll want to change the nok for the outputs to whatever your specific is e.g. 1, 2, 3 . It will be appended with the array ID.

