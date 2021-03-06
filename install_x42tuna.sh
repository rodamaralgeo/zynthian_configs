cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone https://github.com/x42/tuna.lv2.git
cd tuna.lv2
sed -i -- 's,PREFIX ?= /usr/local,PREFIX ?= /zynthian/zynthian-plugins,g' Makefile
sed -i -- 's,LV2DIR ?= $(PREFIX)/lib/lv2,LV2DIR ?= $(PREFIX)/lv2,g' Makefile 
sed -i -- 's,-msse -msse2 -mfpmath=sse,,g' Makefile 
git submodule init
git submodule update
make MOD=1
make install MOD=1
