# 删除原生文件
rm -rf package/network/utils/nftables
rm -rf package/libs/libnftnl

# 临时克隆lede，拷贝需要的组件
git clone --depth=1 https://github.com/coolsnowwolf/lede.git temp_lede

cp -r temp_lede/package/libs/libnftnl package/libs/
cp -r temp_lede/package/network/utils/nftables package/network/utils/

# 删除临时仓库
rm -rf temp_lede

# 校验文件是否到位
echo "====校验文件===="
ls -d package/libs/libnftnl
ls -d package/network/utils/nftables
