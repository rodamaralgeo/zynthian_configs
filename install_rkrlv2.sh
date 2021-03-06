# rkrlv2
cd $ZYNTHIAN_PLUGINS_SRC_DIR
rm -rf rkrlv2
git clone https://github.com/ssj71/rkrlv2.git
cd rkrlv2
sed -i -- 's,-msse -msse2 -mfpmath=sse,,g' lv2/CMakeLists.txt
sed -i -- 's,LV2_INSTALL_DIR lib/lv2/rkr.lv2,LV2_INSTALL_DIR /zynthian/zynthian-plugins/lv2/rkr.lv2,g' lv2/CMakeLists.txt
mkdir build
cd build
cmake ..
make MOD=1
make install MOD=1
make clean
mv /usr/local/share/rkr.lv2 /zynthian/zynthian-plugins/lv2/rkr.lv2
cd ../..
