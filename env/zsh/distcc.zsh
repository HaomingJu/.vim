export CCACHE_PREFIX="distcc"
export CC="ccache gcc" CXX="ccache g++"
export DISTCC_HOSTS="192.168.3.92/16 localhost/8"
export DISTCC_LOG="/var/log/trunk/distcc"
