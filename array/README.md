To submit a number of iterations of structure for a given k, submit 'structure_array.sh' to the queue system by:

qsub structure_array.sh

Before you do though, there are some things you should tweak!

#PBS options

-N you might want to change this to something a little more unique than 'job_name'. I suggest something with the specific 'k' you are running in it, to help you keep track

-l depending on your test runs of individual structure iterations, you might want to bump up the memory and/or walltime

-M  you'll probably want to change this to your address...

-t you want the upper number in this range to be one less than the number of iterations you would like e.g. 19 if you want 20 iterations (0 counts)

#Structure options

-m rename this to whatever your paramfile is actually called.  If your extraparams file is not just called 'extraparams', you'll also need to add a -e flag and the extraparam file name

-o you'll want to change the prefix for the outputs to whatever your specific k is e.g. k1_ . It will be appended with the array ID.

