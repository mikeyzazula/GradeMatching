# GradeMatching
To help make things a but more efficent at work, I've implemented a very simple hashmap tailored to fix an issue with some excel grade spread sheets we receive sometimes at work. 

The first argument is the canvas gradebook CSV in the format we need to use to upload the gradebook.

The second argument is the test score CSV we receive, it's missing SIS ids and grades for the students absent. 

We output a new csv with all the SIS ids and the scores and the students who were absent get a zero. We verify and copy over the cells to the canvas gradebook we plan to upload.


**ALL SIS ID'S IN THE SAMPLES ARE MADE UP. THEY DO NOT BELONG TO ANY STUDENTS**
