# 
#
dotnetfiles=(Startup.vr formMain.vr formModal.vr formNonModal.vr)
classicfiles=(startup.vrp formMain.vrf formModalCall.vrf formModalExFmt.vrf formNonModalShow.vrf)

# Annotate .NET project files.
cd .\\dotnet-project\\dotnet-project
for f in ${dotnetfiles[@]}; 
do
	if [ -f $f ]; then
		echo "Annotating file $f"
		python ..\\..\\..\\prep-for-dotnet-pycco.py $f
		pycco $f.annotated -d ..\\..\\docs\\dotnet -l javascript 
		pycco $f.annotated -d ..\\..\\docs\\dotnet -l javascript 
		rm $f.annotated		
    else
	    echo "File $f does not exist"
	fi	
done

# Annotate classic project files.
cd ..\\..\\classic-project
pwd
for f in ${classicfiles[@]}; 
do
	if [ -f $f ]; then
		echo "Annotating file $f"
		python ..\\..\\prep-for-classic-pycco.py $f
		pycco $f.annotated -d ..\\docs\\classic -l javascript 
		rm $f.annotated	

		python ..//..//extract-props-from-classic.py $f
    else
	    echo "File $f does not exist"
	fi	
done