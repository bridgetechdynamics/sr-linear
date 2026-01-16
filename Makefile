# copy all .html files and the assets folder
DEST := /var/www/html/sr-linear

.PHONY: all copy

all: copy

copy:
	@mkdir -p $(DEST)
	@rsync -av --include='*/' --include='*.html' --include='assets/**' --exclude='.*' ./ $(DEST)
