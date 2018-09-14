# List classic source members.
cd .\\classic-project
pwd
classicfiles=( $( ls *.{vrp,vrf} ) ) 

printf "// ---\n" > classic-source-members.txt 
printf "// Project source members:\n" >> classic-source-members.txt 
printf "//\n" >> classic-source-members.txt 

for f in ${classicfiles[@]}; 
do
	printf "[$f]($f)\n" >> classic-source-members.txt 
done
printf "// ---\n" >> classic-source-members.txt 
printf "\n" >> classic-source-members.txt 

cat classic-source-members.txt 