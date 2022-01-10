* `docker build -t cosminsanda/mxnet-compiler:linux-1.7.0 -f linux.Dockerfile .`
* `git clone --recursive https://github.com/apache/incubator-mxnet mxnet`
* `docker run -i -t -v $(pwd)/mxnet:/mxnet/ cosminsanda/mxnet-compiler:linux-1.7.0 bash`
* `cd mxnet`
* `git checkout v1.8.x`
* `cp config/linux.cmake config.cmake`
* `mkdir build`
* `cd build`
* `cmake ..`
* `cmake --build .`
* `cd ..`
* `mkdir lib`
* `mkdir -p scala-package/lib`
* `cp build/libmxnet.so lib/libmxnet.so`
* `cp build/libmxnet.so scala-package/lib/libmxnet.so`
* `cd scala-package`
* `mvn install -DskipTests=true`
