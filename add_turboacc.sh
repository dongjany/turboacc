# 删除原生文件
rm -rf package/network/config/firewall4
rm -rf package/network/utils/nftables
rm -rf package/libs/libnftnl
rm -f target/linux/generic/hack-6.6/952-add-net-conntrack-events-support-multiple-registrant.patch

# 临时克隆lede，拷贝需要的组件
git clone --depth=1 https://mirror.ghproxy.com/https://github.com/coolsnowwolf/lede.git temp_lede

cp -r temp_lede/package/libs/libnftnl package/libs/
cp -r temp_lede/package/network/utils/nftables package/network/utils/
cp -r temp_lede/package/network/config/firewall4 package/network/config/
cp temp_lede/target/linux/generic/hack-6.6/952-add-net-conntrack-events-support-multiple-registrant.patch target/linux/generic/hack-6.6/

# 校验文件是否到位
echo "====校验文件===="
ls -d package/libs/libnftnl
ls -d package/network/utils/nftables
ls -d package/network/config/firewall4
ls -l target/linux/generic/hack-6.6/952-add-net-conntrack-events-support-multiple-registrant.patch
