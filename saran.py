import subprocess
subprocess.call(['git', 'add', '-A'])
subprocess.call(['git', 'commit', '-m', ])
subprocess.call(['git','push','--set-upstream','git@github.com:saisarankanisetty/docker.git','master'])
