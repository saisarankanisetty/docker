import subprocess
print subprocess.check_output('git init', shell=True)
print subprocess.check_output('git add .', shell=True)
print subprocess.check_output('git commit -m "a commit"', shell=True)
