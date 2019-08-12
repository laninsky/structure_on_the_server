structure_on_the_server
=======================

How to get your sweet structure analysis going on a linux server

The files I have here are implementing structure for K = 1 through 13 as my first pass (I've just attached K = 1, and K = 13... but there were many more between!). I used the 'structure front end' (for win/mac) to generate a 'mainparams' file for my 'dataset' for each K through Project > Generate parameter files. The only hitch with this is that you need to manually modify the outfile and infile locations in those files (because they are writing to a path on your own computer). It seems that structure on the cluster doesn't deal well with relative pathnames, so you probably have to write these out in full (you will notice that I do not have relative pathnames for the results file, but this is because I over-rode this with the batch file).

I didn't use any 'extraparams' parameters, but it requires this file to be present anyway. I created an empty file with two line returns and this seemed to work (an empty file without the line returns did not!).

To execute each of the runs for 20 replicates, I created batch files. I've just attached batch_file_1 and batch_file_4 here, but I think you'll see what the missing ones probably contained! This is where I got away with probably not having a valid path for the results file, because the batch files call structure for each mainparams file, and then specify a different output (so you wouldn't accidentally override your data). They, like the other files need to be run through dos2unix and then chmod u+x to be turned into exectutables after you create them on your local machine. I then 'called' structure just by executing each batch file e.g. 'batch_file_1'

My project_data file is available on request if you are having trouble paramaterizing this for your own data (it is just that it is currently unpublished!)

### Version history
This was code I wrote for myself back in the day when I was first getting comfortable running structure on the command line. I am no longer actively maintaining this repository, but will respond to issues.
