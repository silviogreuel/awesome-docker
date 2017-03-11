TAG = greuel/dry
FILE = Dockerfile

BASE = base
BUILD = build
TEST = test
RUN = run

BASEFILE = $(FILE).$(BASE)
BASETAG = $(TAG)-$(BASE)

BUILDFILE = $(FILE).$(BUILD)
BUILDTAG = $(TAG)-$(BUILD)

TESTFILE = $(FILE).$(TEST)
TESTTAG = $(TAG)-$(TEST)

RUNFILE = $(FILE).$(RUN)
RUNTAG = $(TAG)-$(RUN)


.PHONY: all base build test run clean-all clean-base clean-build clean-test clean-run

all: base build test run

base:
        sudo docker build -f $(BASEFILE) -t $(BASETAG) .

build:
        sudo docker build -f $(BUILDFILE) -t $(BUILDTAG) .

test:
        sudo docker build -f $(TESTFILE) -t $(TESTTAG) .

run:
        sudo docker build -f $(RUNFILE) -t $(RUNTAG) .


clean-all: clean-base clean-build clean-test clean-run

clean-base:
        sudo docker rmi $(BASETAG)

clean-rmi:
        sudo docker rmi $(BUILDTAG)

clean-test:
        sudo docker rmi $(TESTTAG)

clean-run:
        sudo docker rmi $(RUNTAG)
