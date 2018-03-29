az container create \
-g $resource \
--name nginx \
--image nginx:1.11 \
--ip-address public
