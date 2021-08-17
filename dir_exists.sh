read foldername
if [ -d $foldername ];
then
echo "exists"
else
mkdir $foldername
echo "new folder created"
fi
