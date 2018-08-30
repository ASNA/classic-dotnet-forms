# 
#
dotnetfiles=(formMain.vr)
classicfiles=(startup.vrp formMain.vrf formModalCall.vrf formModalExFmt.vrf formNonModalShow.vrf)

cd .\\dotnet-project\\dotnet-project

# Annotate classic project files.
cd ..\\..\\classic-project
pwd
for f in ${classicfiles[@]}; 
do
	echo "Filename: $f"
done