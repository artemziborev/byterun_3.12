
install:
	pip install -r requirements.txt

test:
	python3 -m unittest discover -s tests

docker-build:
	docker build -t byterun .

docker-test:
	docker run --rm byterun
