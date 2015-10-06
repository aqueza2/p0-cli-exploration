#### How does tracking and adding changes make developers' lives easier?
Tracking and adding changes allows developers to have a safety net when it comes to working on projects. When you track your changes you are able to go back to that change if something goes wrong because of it later on.
#### What is a commit?
A commmit is a snapshot of your code at a point in time. It is a bundle of changes that you decide to save and add to your code. Commits are like checkpoints in videogames. When something goes wrong, instead of going back to the beginning, you go back to the point you last saved where things were going right.
#### What are the best practices for commit messages?
It is best to use the imperative form of verbs when describing the changes you made. Concise, clear, and short messages are the best.
#### What does the HEAD^ argument mean?'
The HEAD^ argument means the last commit you saved.If you commit some files and decide that you actually want to change the files, use the command: git reset --soft HEAD^. HEAD is the commit you are currently on, HEAD^ is the last commit.
#### What are the 3 stages of a git change and how do you move a file from one stage to the other?
The three stages of a git change are : modified, staged/ready to commit, and commited.
Modified files are files in which you have made a change. Untracked files are files you have created but that you haven't made any changes to. To move from modified or untracked to staged/ready to commit, use "git add filename" or "git add ." if you want to stage everything.
To untrack files, use "git reset HEAD filename". To discard changes in modified files use "git checkout -- filelocation/name"
To go from staged/ready to commit to committed, use git commit -m "message here" or"git commit -v" and then enter you commit message.
Commited files are saved changes.
#### Cheatsheet of commands to commit changes
On terminal: on new branch you've created,
- subl .
on sublime: change a file, ie. add text, then save
on terminal:
-git status
-git add filename
-git commit -m "enter commit message here"
#### What is a pull request and how do you create and merge one?
A pull request should be done after you have pushed your changes into your GitHub repo. After commiting your changes, use "git push origin nameofbranchwhereworkwasdone" to add your changes to the remote repo.
The changes will now update to GitHub. On there, click "pull request" on the right hand side.
Select (yourusername) base fork, base:master, compare: branch.
create pull request, and merge it. Your changes will then be saved and added to your remote repo master branch.
#### Why are pull requests preferred when working with teams
Pull requests are preferred when working with teams because it prevents different users from stepping on each other's toes, but they allow you to collaborate and make the coding environment better by allowing you to make changes and fix bugs and so on. You are able to make changes to files shared with others, and everyone you share it with is able to see why you made that change.
