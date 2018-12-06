#pyenv install 3.5.6
#pyenv local 3.5.6
pip install --user --upgrade virtualenv
virtualenv -p `which python` env
source ./env/bin/activate
pyenv exec pip install --upgrade -r requirements.txt
pyenv exec jupyter contrib nbextension install --user
pyenv exec jupyter nbextension enable toc2/main
pyenv exec jupyter notebook
