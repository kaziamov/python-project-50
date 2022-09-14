#Makefile

gd-h:
	poetry run gendiff -h
mtest:
	poetry run pytest -vv
lint:
	poetry run flake8 gendiff
install:
	poetry install
build:
	poetry build
publish:
	poetry publish --dry-run
package-install:
	python3 -m pip install --user dist/*.whl --force
test-coverage:
	poetry run pytest --cov=gendiff --cov-report xml


