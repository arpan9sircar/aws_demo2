program: setup install lint test

setup:
	python3 -m venv ~/.MLOPS
	# source ~/.MLOPS/bin/activate

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python3 -m pytest 

lint:
	pylint --disable R,C add.py

all: program
