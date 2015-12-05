How does tracking and adding changes make developers' lives easier?
 - tracking and adding changes allows developers to make improvements to the software with less fear of breaking something and being unable to go back. With the ease of mind that if your code breaks something that you commit, and all you have to do is go back a commit, you can work with more confidence. It also allows for multiple programmers to be working in the files simultaneously.

What is a commit?
 - a commit is a save state that you push to the master. commits are made by first adding files to be modified using git add filename and then commiting them using git commit filename.

What are the best practices for commit messages?
 - commit messages should be written with 70 character line breaks. They should be written in the imperative. For long messages a summary should precede a blank space, followed by a more detailed explanation.

What does the HEAD^ argument mean?
 - The HEAD^ argument means the previous commit. to go back further you can use HEAD-2, HEAD-3 etc..

What are the 3 stages of a git change and how do you move a file from one stage to the other?
 - I may have missed where this was in the document, but may knowledge of the three stages would be to create a branch from the master and make your changes. Then and your changes and finally commit them. moving the files from these stages requires the following commands and actions
  1. git checkout -b branch_name (this creates and moves you into a new branch)
  2. make your edits
  3. git add filename or git add . (the first adds a specific filename to be modified, the second adds everything in the current directory)
  4. git commit -m "message here" (this commits the file or files and "saves" them to be pulled into the master)

Write a handy cheatsheet of the commands you need to commit your changes?
 - git checkout master (puts you on the master branch of your local repo)
 - git pull origin master (merges in changes from remote repository to your local repo)
 - git checkout -b new-branch-name
 - edit changes
 - git add . or git add filename
 - git commit -m "message here"
 - git push origin new-branch-name (this pushes your changes to the github repo)
 - make the pull request on the github page (usually done by someone else to check your code, but in this course we do it.)
 - go into github pull page, merge the new-branch-name onto the master
 - delete the branch from your github
 - delete the branch from your local repo using git branch -d new-branch-name

What is a pull request and how do you create and merge one?
 - a pull request is the best way to merge code in from a different branch into the master branch. You do it by first pushing the branch you want up to your github page. You then go the pull request page, make the merge be from feature-branch-name to master. From their review the changes that will be made, make a comment and then merge. Delete the feature-branch-name after you have successfully merged.

Why are pull requests preferred when working with teams?
 - Pull requests are prefferred by teams because it allows someone to check your code. As stated earlier we do this ourselves in the course, but in the real world most likely someone would review the code before merging it to the master.