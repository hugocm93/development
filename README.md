# development

```bash
#Dependencies
sudo yum install zsh

#Setup
cd $HOME
git init
git remote add origin https://github.com/hugocm93/development.git
git checkout -f master
~/programs/fetchHome.sh #cria links simbolicos dos diretorios

#v3o2
mkdir v3o2_folders
mkdir v3o2_folders/repo1
#fazer git clone do v3o2 em v3o2_folders/repo1
release #cria link simbólico do v3o2

#jira-cli
#criar jira_auth.sh com variáveis de ambiente para jira-cli

#glab
#criar gitlab_auth.sh com variáveis de ambiente para glab 
```
