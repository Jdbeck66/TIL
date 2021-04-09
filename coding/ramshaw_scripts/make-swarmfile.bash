rm swarm.cmd
touch swarm.cmd
for file in `ls *.d12`
do
arrIN=(${file//./ })
outputDirectory="Output_${arrIN}"
if [ ! -d "${outputDirectory}" ]; then
  mkdir ${outputDirectory}
  cp ${file} "${outputDirectory}/INPUT"
  echo "cd ${outputDirectory} && mpirun -n 28 MPPcrystal < INPUT > OUTPUT 2>&1" >> swarm.cmd
fi
done
