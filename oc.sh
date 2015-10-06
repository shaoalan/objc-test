echo "-------------------------------------"
echo "-------- auto build program ---------"
echo "------ write by shaoxianchang -------"
echo "-------- 2015-10-05 00:45:01 --------"
echo "-------------------------------------"
echo "@@build file: "$1
gcc `gnustep-config --objc-flags` $1.m -o $1 -L /GNUstep/System/Library/Libraries -lgnustep-base -lobjc -std=c99
$1.exe