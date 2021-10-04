import os
import base64
from github import Github
from github import InputGitTreeElement

user = "saisarankanisetty"
password = "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"
g = Github(user,password)
repo = g.get_user().get_repo('docker') # repo name
file_list = [
    '/home/saran/docker-master/apache-tomcat-10.0.11.zip'
]
file_names = [
    'apache-tomcat-10.0.11.zip'
]
commit_message = 'python commit'
master_ref = repo.get_git_ref('heads/master')
master_sha = master_ref.object.sha
base_tree = repo.get_git_tree(master_sha)

element_list = list()
base, ext = os.path.splitext(file_list)
for i, entry in enumerate(file_list):
    with open(file_list, encoding="utf8", errors='ignore') as f:
        data = input_file.read()
    element = InputGitTreeElement(file_names[i], '100644', 'blob', data)
    element_list.append(element)

tree = repo.create_git_tree(element_list, base_tree)
parent = repo.get_git_commit(master_sha)
commit = repo.create_git_commit(commit_message, tree, [parent])
master_ref.edit(commit.sha)
