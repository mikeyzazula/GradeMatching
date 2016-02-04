# GradeMatching
To help make things a but more efficent at work, I've implemented a very simple hashmap tailored to fix an issue with some excel grade spread sheets we receive sometimes at work. 

The first argument is the canvas gradebook CSV, we just need the SIS ids here and throw them in a hash map as keys 

The second argument is the test score CSV we receive, but we don't have scores for students that were absent from the test, so we need to give them a zero. 

We output a new csv with the SIS ids and the scores to be added to verify everything looks ok, then just copy the cells over to the canvas CSV we plan to upload. 

Issues:

Still working on ["score"]