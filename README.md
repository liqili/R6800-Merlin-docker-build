
## Asuswrt Merlin 固件交叉编译环境

[![](https://images.microbadger.com/badges/image/mritd/asuswrt-merlin-build.svg)](https://microbadger.com/images/mritd/asuswrt-merlin-build "Get your own image badge on microbadger.com")  [![](https://images.microbadger.com/badges/version/mritd/asuswrt-merlin-build.svg)](https://microbadger.com/images/mritd/asuswrt-merlin-build "Get your own version badge on microbadger.com")

### 1、下载源码

```
mkdir -p SWRT-dev
cd SWRT-dev
git clone https://github.com/SWRT-dev/swrt-gpl
git clone https://github.com/SWRT-dev/mtk-toolchains
```
### 2、运行编译环境

```
docker-compose create --build
docker-compose run ubuntu
```

### 3、进入容器编译
```
make swrt-r6800
```


