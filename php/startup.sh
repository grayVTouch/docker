#!/bin/bash

# 启动 nginx
php-fpm -R

# 后台执行（永远执行不完，所以通过 docker run 方式执行命令的时候执行完不会退出）
# 要求前台有一个永远不会停滞的命令
tail -f /dev/null