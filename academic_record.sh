echo "Academic Record Management System"
echo "1. Add Record"
echo "2. View Records"
echo "3. Search Record"
echo "4. Update Record"
echo "5. Delete Record"
echo "6. Exit"

read -p "Enter your choice: " choice

case $choice in
1)
  echo "Add Record Selected"

    read -p "Enter Roll Number: " roll
    read -p "Enter Student Name: " name
    read -p "Enter Subject: " subject
    read -p "Enter Marks: " marks
    read -p "Enter Grade: " grade

  echo "$roll $name $subject $marks $grade" >> records.txt

  echo "Record Added Successfully"
;;

2)
  echo "View Records Selected"
  cat records.txt
;;

3)
  echo "Search Record selected"

   read -p "Enter Roll Number to Search: " search_roll

  grep "^$search_roll" records.txt
;;

4)
  echo "Update Record Selected"

   read -p "Enter Roll NUmber to Update: " update_roll

   read -p "Enter New Record: " new_record

  sed -i "/^$update_roll/c\\$new_record" records.txt

  echo "Record Updated Successfully"
;;

5)
  echo "Delete Record Selected"

   read -p "Enter Roll Number to Delete: " delete_roll

  sed -i "/^$delete_roll/d" records.txt

  echo "Record Deleted Successfully"
;;

6)
  echo "Exiting Acedemic Record Management System..."
   exit
;;

*)
  echo "Invalid Choice"
;;

esac






