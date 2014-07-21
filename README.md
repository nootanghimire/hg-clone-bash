hg-clone-bash
=============

Bash Script to pull mercurial repo changeset-by-changeset

#Problems

1. hg does not allow shallow clone, so we HAVE to clone every-freakin-thing
2. hg cannot pause-and-resume the clone, so ppl having low-internet-speed are sucked!


#Solution?

1. mimic the pause-and-resume scenario by pulling only some changeset at a time, saving the state and resuming.


#Still under Development. Please Contirbute or Suggest Features!

