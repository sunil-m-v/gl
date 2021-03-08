#!/bin/bash

##Function to show all existing buckets
show_buckets()
{
	echo "Fetching buckets now.....please wait"
	aws s3 ls
}


##Function to create new bucket
create_bucket()
{
	echo "Enter the bucket name:"
	read bucket_name
	echo "Creating bucket now.....please wait"
	aws s3 mb s3://$bucket_name
}

##Function to delete a bucket 
delete_bucket()
{
  	echo "Enter the bucket name:"
        read bucket_name
        echo "Deleting bucket now.....please wait"
        aws s3 rb s3://$bucket_name

}



##Create infinite while loop##
while true
do
clear # clear screen for each loop of menu
echo
echo "Select an option"
echo "***************************************"
echo "Enter 1 to view all S3 buckets"
echo "Enter 2 to create a new bucket"
echo "Enter 3 to delete a bucket"
echo "Enter 0 to quit"
echo -e "Enter your selection here and press enter"
read answer # create variable to retains the answer
case "$answer" in
1) show_buckets ;;
2) create_bucket ;;
3) delete_bucket ;;
0) exit ;;
esac
echo -e "Press the enter key to continue!"
read input ##This causes a pause when refreshing the menu##
done
