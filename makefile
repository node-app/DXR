build: dep
	time LD_LIBRARY_PATH=dxr/trilite/ dxr-build.py -f dxr.config

dep: dep_clang dep_dxr
	git submodule update --init --recursive
	apt-get install python-pip pkg-config libsqlite3-dev python-jinja2

dep_clang:
	wget http://llvm.org/releases/3.2/clang+llvm-3.2-x86_64-linux-ubuntu-12.04.tar.gz
	tar -xvf clang+llvm-3.2-x86_64-linux-ubuntu-12.04.tar.gz
	export PATH=$PATH:~/clang+llvm-3.2-x86_64-linux-ubuntu-12.04/bin

dep_dxr:
	cd dxr
	pip install -r requirements.txt
	LLVM_CONFIG=~/clang+llvm-3.2-x86_64-linux-ubuntu-12.04/bin/llvm-config make
	python setup.py install
	cd tests/test_basic
	make