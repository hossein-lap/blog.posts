DIRS = tools programming

all:
	find $(DIRS) -type d -exec make -C {} \;

force:
	find $(DIRS) -type d -exec make -C {} force \;

