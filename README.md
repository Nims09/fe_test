# fe_test

SETUP
- Two steps, clone this project into a working and running Apache server
- In /code/textwriter.php, change 'FULL_PATH_TO/tmp/mydata.txt' to the full path to mydata.txt

	You should now be able to access the index at its correct destination you put it near apache.

DESIGN
- I added an Angular controller to the index.html, to avoid hard coding data onto the view
- I thought it didn't make sense to submit name, address ect with the other information hardcoded, so I added a 'Reason for interest' input, and my own php script that writes to tmp/mydata.txt text file.
- Tabs do not refresh the page, nor does submitting data, and all of the tabs, and tabe 'panes' are generated dynamically from the angular controller. 
- The index.html is responsive.
- The PHP script doesn't validate the input, but does sanitize it. 