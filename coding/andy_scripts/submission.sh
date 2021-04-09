#!/bin/bash


function run_global(){
  for i in {000..099}
  do
    # echo "Submission script $i"
    file=$1$i$2
    echo $file
    name=$(echo $file | cut -d'/' -f 3)
    jobname=${name}-${i}
    echo $jobname
    qsub -v var="$file" -N $jobname ga_multirun_sub.pbs
  done
}

# temperature=(10 50 150 298)
#temperature=(298)
# percentage=(1..7)
# echo $percentage
file_subfix='.i'
#for k in ${temperature[@]}
#do
#  for j in {1..7}
#  do
#  file_prefix="global_analysis/Cu_paths_3/Cu_"$k"/Cu_"$j"/file_"
#  run_global $file_prefix $file_subfix
#  done
#done
#file_prefix="global_analysis/PfHfO7/RBKG_Test/RBKG_1.0/file_"
#file_subfix='.i'
#run_global $file_prefix $file_subfix

#file_prefix="global_analysis/PfHfO7/RBKG_Test/RBKG_1.1/file_"
#file_subfix='.i'
#run_global $file_prefix $file_subfix

#file_prefix="global_analysis/PfHfO7/RBKG_Test/RBKG_1.2/file_"
#file_subfix='.i'
#run_global $file_prefix $file_subfix

#file_prefix="global_analysis/PfHfO7/RBKG_Test/RBKG_1.3/file_"
#file_subfix='.i'
#run_global $file_prefix $file_subfix

#file_prefix="global_analysis/PfHfO7/Optimize_Test/file_"
#file_subfix='.i'
#run_global $file_prefix $file_subfix

#file_prefix="global_analysis/PfF/Optimize_Test/file_"
#file_subfix='.i'
#run_global $file_prefix $file_subfix

#file_prefix="global_analysis/PrF_Comp/T600/file_"
#file_subfix='.i'
#run_global $file_prefix $file_subfix
#
#file_prefix="global_analysis/PrF_Comp/T800/file_"
#file_subfix='.i'
#run_global $file_prefix $file_subfix
#
#file_prefix="global_analysis/PrF_Comp/T1400/file_"
#file_subfix='.i'
#run_global $file_prefix $file_subfix

file_prefix="global_analysis/WSU_UO2/file_"
file_subfix='.i'
run_global $file_prefix $file_subfix


