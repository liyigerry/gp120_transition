#(240, 0) (479, 239) (718, 478) (957, 717) (1196, 956) (1435, 1195) (1674, 1434) (1913, 1673) (2152, 1912) (2392, 2151)
n=2392
m=2151
j=10
for((i=m;i<n;i++))
do
 echo ${i} >> grid_${j}.log
 sed -e "s/HILLS_driver_bias_/HILLS_driver_bias_${i}/g" -e "s/grid_/..\/grid_dir_03_02\/grid_${i}.dat/g" -e "s/COLVAR_driver_bias_/COLVAR_driver_bias_${i}/g" plumed_bias.dat > plumed_${j}.dat
 plumed driver --plumed plumed_${j}.dat --mf_xtc ../../md.xtc
done