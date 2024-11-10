#!/bin/csh -f

cd /home/eda/work5

#This ENV is used to avoid overriding current script in next vcselab run 
setenv SNPS_VCSELAB_SCRIPT_NO_OVERRIDE  1

/opt/eda/synopsys/vcs/S-2021.09-SP2/linux64/bin/vcselab $* \
    -o \
    simv \
    -nobanner \

cd -

