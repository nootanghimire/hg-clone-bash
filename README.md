hg-clone-bash
=============

Bash Script to pull mercurial repo changeset-by-changeset (inspired by http://stackoverflow.com/questions/4716200/is-there-any-way-to-clone-a-repository-from-the-web-incrementally )

NOTE: CURRENTLY OPTIMIZED FOR mozilla-central repo. I wish to find no. of total revisions in future. 
One probable way might be `curl`ing the remote address and finding the changeset (Does not know yet if all the remote repo could be supported like this)

##Get it working

1. Clone the Repo.
2. Go over to the directory.
3. Run `./clone.sh <remote-repo-addr> <local-addr>`.
4. If you have cancelled the process, go to `<local-addr>` and run `./pull.sh`.

#Problems

1. hg does not allow shallow clone, so we HAVE to clone every-freakin-thing.
2. hg cannot pause-and-resume the clone, so people having low-internet-speed are sucked!


#Solution?

1. Mimic the pause-and-resume scenario by pulling only some changeset at a time, saving the state and resuming.


#Still under Development. Please Contribute or Suggest Features!

