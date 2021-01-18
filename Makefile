start:
	hugo server -D

publish:
	hugo -D
	aws s3 sync public/ s3://ravweinfeld.com --acl public-read --delete

backup:
	git add .
	git commit -m "backing up"
	git push
