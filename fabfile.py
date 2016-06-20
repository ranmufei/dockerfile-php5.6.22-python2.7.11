import os
import re
from datetime import datetime as dt
from datetime import timedelta as td

from fabric.api import run
from fabric.api import put
from fabric.api import get

from fabric.operations import local


def test():
   """
   tests fabric install
   """
   return 1

   
 def git_branch():
    """
    echos active git branch
    """
    try:
        # use the develop database if we are using develop
        import os
        from git import Repo
        repo = Repo(os.getcwd())
        branch = repo.active_branch
        branch = branch.name

        print branch
    except ImportError:
        pass
    return 1

