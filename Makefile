start:
	hugo server -D

publish:
	hugo -D
	aws s3 sync public/ s3://ravweinfeld.com --acl public-read --delete

backup:
	git add .
	git commit -m "backing up"
	git push

help:
	@echo "start": start the local server.
	@echo "publish": publish your changes to AWS. Used to update the actual site.
	@echo "backup": backup and save all your changes to Github.
	@echo "old": 
