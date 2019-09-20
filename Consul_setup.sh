
http://10.150.34.184:85/servicedesk/customer - Bolivia
Consul :http://10.150.34.139:8500/ui/



---degault aggrigator port 3010
http://10.150.4.4:85/ -Col

http://10.150.4.173:8500/ui/dc1/services


http://10.153.1.140:85/ -XL
http://10.150.34.18:85/ QRP



curl -X PUT -d '{"ID": "redis1", "Name": "omnichannel-redis", "Address": "localhost", "Port": 6379 }' http://localhost:8500/v1/agent/service/register

=============
redis setup

docker run -d --name=redis --net=omnichannel_nw -p 6379:6379 artifactory.qvantel.net/omnichannel-redis-docker:4.29.0.218_master_4b3a5440

curl -X PUT -d '{"ID": "redis1", "Name": "omnichannel-redis", "Address": "localhost", "Port": 6379 }' http://localhost:8500/v1/agent/service/register
=============

Bolivia---setup

Consul :http://10.150.34.139:8500
./consul kv export -http-addr=http://10.150.34.139:8500 /apps/omnichannel > consul.json
./consul kv import @consul.json

curl -X PUT -d '{"ID": "bssapi-aggregator", "Name": "bssapi-aggregator", "Address": "10.150.34.184", "Port": 31137 }' http://localhost:8500/v1/agent/service/register
curl -X PUT -d '{"ID": "qvaa-keycloak1", "Name": "qvaa-proxy-80", "Address": "10.150.34.184", "Port": 9980 }' http://localhost:8500/v1/agent/service/register
curl -X PUT -d '{"ID": "QVAA-HTTP-0", "Name": "QVAA-HTTP", "Address": "10.150.34.184", "Port": 9980 }' http://localhost:8500/v1/agent/service/register
curl -X PUT -d '{"ID": "redis1", "Name": "omnichannel-redis", "Address": "10.150.34.184", "Port": 31441 }' http://localhost:8500/v1/agent/service/register


curl -X PUT -d '{"ID": "redis1", "Name": "omnichannel-redis", "Address": "52.19.87.245", "Port": 6379 }' http://localhost:8500/v1/agent/service/register
col --setup

http://10.150.4.173:8500
./consul kv export -http-addr=http://10.150.4.173:8500 /apps/omnichannel > consul.json
./consul kv import @consul.json

curl -X PUT -d '{"ID": "qvaa-keycloak1", "Name": "qvaa-proxy-80", "Address": "10.150.4.4", "Port": 9980 }' http://localhost:8500/v1/agent/service/register
curl -X PUT -d '{"ID": "QVAA-HTTP-0", "Name": "QVAA-HTTP", "Address": "10.150.4.4", "Port": 9980 }' http://localhost:8500/v1/agent/service/register

curl -X PUT -d '{"ID": "bssapi-aggregator", "Name": "bssapi-aggregator", "Address": "10.150.4.4", "Port": 31567 }' http://localhost:8500/v1/agent/service/register




curl -X PUT -d '{"ID": "bssapi-aggregator", "Name": "bssapi-aggregator", "Address": "10.150.34.184", "Port": 31137 }' http://localhost:8500/v1/agent/service/register

10.150.34.184:31137

curl -X PUT -d '{"ID": "redis1", "Name": "omnichannel-redis", "Address": "10.150.4.206", "Port": 31303 }' http://localhost:8500/v1/agent/service/register

http://10.150.34.184:31251

10.150.34.184:31137
http://10.150.34.184:31137

docker run --name=POS_Col --net=omnichannel_nw -itd -h consul -p 8400:8400 -p 8500:8500 -p 8600:53/udp artifactory.qvantel.net/consul-server -bootstrap


curl -X PUT -d '{"ID": "bssapi-aggregator", "Name": "bssapi-aggregator", "Address": "10.150.34.184", "Port": 3010 }' $SERVICE_CONFIG_URL/v1/agent/service/register

curl -X PUT -d '{"ID": "bssapi-aggregator", "Name": "bssapi-aggregator", "Address": "10.150.4.4", "Port": 3010 }' $SERVICE_CONFIG_URL/v1/agent/service/register
10.150.6.231:31376

/10.150.34.184:31764

http://10.150.4.206:31389
10.150.6.40:31162

curl -X PUT -d '{"ID": "redis1", "Name": "omnichannel-redis", "Address": "10.150.6.225", "Port": 31295 }' http://localhost:8500/v1/agent/service/register

10.150.6.225:31295
http://10.150.4.4:31838
10.150.6.231:31347

10.150.6.40:31162

10.150.34.184:31441
10.150.34.184:6379
:31347
10.150.34.184:31137
http://10.150.34.184:31251

curl -X PUT -d '{"ID": "bssapi-aggregator", "Name": "bssapi-aggregator", "Address": "10.150.4.4", "Port": 31838 }' http://localhost:8500/v1/agent/service/register

http://10.150.34.139


10.150.6.40:31162

10.150.6.231:31347


// createBasket: (personId: string) => dispatch(actions.basket.createBasket(personId)),
10.150.6.225:31330





[
{
"id": "customer_registration",
"name": "Nomination"
},
{
"id": "cat-b2c-mobile-plan-prepaid",
"name": "Prepaid Plans"
},
{
"name": "Internet Monthly",
"id": "cat-b2c-mobile-addon-prepaid-internet-monthly"
},
{
"name": "Internet Weekly",
"id": "cat-b2c-mobile-addon-prepaid-internet-weekly"
},
{
"name": "Internet Daily",
"id": "cat-b2c-mobile-addon-prepaid-internet-daily"
},
{
"id": "cat-b2c-mobile-addon-prepaid-voice-monthly",
"name": "Voice Monthly"
},
{
"id": "cat-b2c-mobile-addon-prepaid-voice-weekly",
"name": "Voice Weekly"
},
{
"id": "cat-b2c-mobile-addon-prepaid-voice-daily",
"name": "Voice Daily"
},
{
"id": "cat-b2c-mobile-addon-prepaid-sms",
"name": "SMS"
},
{
"id": "cat-b2c-mobile-addon-prepaid-bundle",
"name": "Bundle Mixto"
},
{
"id": "cat-b2c-mobile-addon-prepaid-others",
"name": "Others"
}
]




curl -X PUT -d '{"ID": "bssapi-aggregator", "Name": "bssapi-aggregator", "Address": "10.150.4.206", "Port": 31389 }' $SERVICE_CONFIG_URL/v1/agent/service/register



{"apiGenerateBy": "CUENTA", "apiInvoiceType": "CNS", "apiItemId": "9695", "bccsCashierDefaultMSISDN": "77390000", "bccsCashierSubmitUrl": "http://www.mocky.io/v2/5b45d5302f00008d36420e21", "bccsCashierKafkaServers": "10.150.34.184:9092, 10.150.34.139:9092, 10.150.34.60:9092","bccsCashierPaymentTopic": "sbi_cash_payment"}


{"apiGenerateBy": "CUENTA", "apiInvoiceType": "CNS", "apiItemId": "9695", "bccsCashierDefaultMSISDN": "77390000", "bccsCashierSubmitUrl": "http://www.mocky.io/v2/5b45d5302f00008d36420e21", "bccsCashierKafkaServers": "10.150.6.225:9092, 10.150.6.178:9092","bccsCashierPaymentTopic": "sbi_cash_payment"}
