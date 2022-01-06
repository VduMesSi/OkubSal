#!/bin/sh

mkdir /tmp/v2/

unzip /v2.zip -d /tmp/v2/

chmod 755 /tmp/v2/v2ray
chmod 755 /tmp/v2/v2ctl

cat << EOF > /tmp/v2/config.json
{
    "inbounds": [
        {
            "port": 443,
            "protocol": "vmess",
            "settings": {
                "clients": [
                    {
                        "id": "7a2f2a5a-ffd9-4408-b295-19bfd0906660",
                        "alterId": 64
                    }
                ],
                "disableInsecureEncryption": true
            },
            "streamSettings": {
                "network": "ws",
                "wsSettings": {
                "path": "/tafskvna"
                }
            }
        }
    ],
    "outbounds": [
        {
            "protocol": "freedom"
        }
    ]
}

EOF

echo 开始运行
/tmp/v2/v2ray -config /tmp/v2/config.json

echo 如果看到此信息，代表运行失败。
