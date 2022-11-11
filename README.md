# Phylogenetic Biology - Final Project

## Guidelines - you can delete this section before submission

This is a stub for your final project. Edit/ delete the text in this readme as needed.

There are two ways you can use this document:  
- You can download this file to a folder on your computer, edit this document and add other files (data, code, etc), and then zip up and submit the folder on canvas.
- You can for the [repository](finalproject) containing this document on gitub. Then commit and push your canges to the repository, and submit a link to the repository on canvas.

Github is a great way to work on projects, but also has a steep initial learning curve.


Some guidelines and tips:

- Use the stubs below to write up your final project. Alternatively, if you would like the writeup to be an executable document (with [knitr](http://yihui.name/knitr/), [jupytr](http://jupyter.org/), or other tools), you can create it as a separate file and put a link to it here in the readme.

- For information on formatting text files with markdown, see https://guides.github.com/features/mastering-markdown/ . You can use markdown to include images in this document by linking to files in the repository, eg `![GitHub Logo](/images/logo.png)`.

- The project must be entirely reproducible. In addition to the results, the repository must include all the data (or links to data) and code needed to reproduce the results.

- If you are working with unpublished data that you would prefer not to publicly share at this time, please contact me to discuss options. In most cases, the data can be anonymized in a way that putting them in a public repo does not compromise your other goals.

- Paste references (including urls) into the reference section, and cite them with the general format (Smith at al. 2003).

OK, here we go.

# The effect of hidden paralogy and missing data on phylogenetic inference

## Introduction and Goals

The goal of my project is to answer the question, How do WGD events affect phylogenetic inference, 
specifically when there is a lot of missing data within sequenced genomes?
I hope to apply this to thinking about the uncertainty in the cyclostome phylogeny if I have time, 
in which case I want to know whether the WGD before this split along with the large amount of 
missing data for many of these taxa could be biasing the data and causing cyclostomes 
to appear monophyletic even if they aren't.

The methods I will use to do this are data simulation and phylogenetic inference, primarily using R 
and various programs on the cluster.
My plan so far is to take an example sequence from an organism (I haven't decided which yet, 
probably an invertebrate closely related to chordates that has really good sequence data), and
simulate a duplication of the entire thing, and then molecular evolution over the sequences 
over two divergence events. I will then take multiple random samples of a small subset of genes 
from each resulting lineage, infer phylogenies for each sample, and evaluate how often my inference 
matches the data that I simulated. If I have time, I will look into how cyclostome trees have
been inferred in the past, and try to change aspects of my test to model that. 

The data I will use are primarily simulations, but they will be simulated from data publicly 
available (probably on GenBank).

## Methods

I downloaded a gene from a tunicate genome from Genbank (https://www.ncbi.nlm.nih.gov/nuccore/NC_020168.2) to serve as my "ancestral" sequence. I manually copied this to simulate a WGD and then created a phylogeny roughly based on the early vertebrate phylogeny to simulate the data on. I used seqgen to generate sequences on this phylogeny, and then manually separated the two "paralogs" that I had created. I then selected the first paralog for all organisms for one analysis, and everything but hagfish and lampreys on the other. I ran these through IQTREE with modelfinder and evaluated which matched more closely to the real tree the data was simulated on.

For more details on the methods see methods.txt

## Results

The jc_sim folder is for the first time I ran the analysis, I specified a very fast rate of evolution so the tree was inaccurate over almost all taxa. The jc_sim_shorter folder has a shorter branch lengths, and with that one I found that removing the same paralog caused hagfish and lamprey to form a clade with very high branch length, which supports my hypothesis. I want to try this again but changing more parameters to see how they affect it.

see jc_sim_shorter/cyclo_jc_sim_shorter_one_paralog.fasta.contree 

## Discussion

These results indicate...

The biggest difficulty in implementing these analyses was...

If I did these analyses again, I would...

## References

