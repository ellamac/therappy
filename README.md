# therappy

## About branches:
**master**: The final app, only merge here when milestones are reached. This branch always works and is presentable.

**develop**: Branch for developing the app, while having the previous version in master-branch. This branch should always be working. This branch is merged to master once done.

other branches can be named my eg. by feature "card-widget". These branches can be broken. Once it's done and **working** it can be merged via pull-request to develop. 

## initalizing 
1. Create a folder for the project (on your computer)
2. Open terminal or command prompt
3. go to the folder you want to have the project in with:
  `cd <path to the folder>`
4. clone the remote repository to your local folder with:
  `git clone https://github.com/ellamac/therappy.git`
<!-- end of the list -->

## before starting to work
1. Make sure your development branch is up to date with:
  `git pull origin develop`
2. Create a new branch from "develop" with:
  `git checkout -b <branch name> develop`
3. or continue with an already existing branch:
   `git checkout <branch name>`
<!-- end of the list -->

## save changes
Make sure you are in the correct branch!
1. add new changes (use this often):
  `git add .`
2. commit changes (use this when you get something to work/done):
  `git commit -m "comment about what changes you made"`
3. push to the remote project:
  `git push`
4. go to the project in github.com/ellamac/therappy
5. under "Pull requests" create a new one from the push you just made.
6. Someone else will check that the request is ok and then merge into develop.
7. if the branch is up to date with everything you can delete it.
<!-- end of the list -->
  
