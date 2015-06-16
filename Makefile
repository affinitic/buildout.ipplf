NAME="ipplf"
build:
	docker build -t $(NAME) .
run:
	docker run -p 8080:8080 -v $(PWD)/devel:/code/devel -v $(PWD)/var/filestorage:/code/var/filestorage -v $(PWD)/var/blobstorage:/code/var/blobstorage $(NAME)
shell:
	docker run -p 8080:8080 -ti -v $(PWD)/devel:/code/devel -v $(PWD)/var/filestorage:/code/var/filestorage -v $(PWD)/var/blobstorage:/code/var/blobstorage $(NAME) bash

