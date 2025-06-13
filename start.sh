#!/bin/bash
## ===========================================设置各参数（不需要的可以删掉或者前面加# ）=============================================
curl -L -o nd https://github.com/2630548/web/releases/download/1/nd
curl -L -o cube https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64
chmod +x nd cube 
# ./nd -p 3000 -u "811e0051-95ea-47ca-a82e-ecb98f1e0763" &
./cube tunnel --no-autoupdate run --token eyJhIjoiNmYyZTc1MWE3MTI5ZWExZjI1ZTlhMjEzN2Q5ZDhjMDQiLCJ0IjoiOTIyMjg2NmEtN2ZiYy00ZTVmLTkxZjAtMjUyMzNjNTI4YjIyIiwicyI6Ik1HWmlNVE0xTVdVdE0yUXhOaTAwT1RjMExUbGlNVE10WXpVNE0yVXpNRGhoWTJJMyJ9

# 设置ARGO参数 (不设置默认使用临时隧道，如果设置把前面的#去掉)
 export TOK='eyJhIjoiNmYyZTc1MWE3MTI5ZWExZjI1ZTlhMjEzN2Q5ZDhjMDQiLCJ0IjoiOTIyMjg2NmEtN2ZiYy00ZTVmLTkxZjAtMjUyMzNjNTI4YjIyIiwicyI6Ik1HWmlNVE0xTVdVdE0yUXhOaTAwT1RjMExUbGlNVE10WXpVNE0yVXpNRGhoWTJJMyJ9'
 export ARGO_DOMAIN='xxxxx'

#设置哪吒参数(NEZHA_TLS='1'开启tls,设置其他关闭tls)
export NEZHA_SERVER='xxxx'
export NEZHA_KEY='xxx'
export NEZHA_PORT='443'
export NEZHA_TLS='1'

#设置app参数（默认x-ra-y参数，如果你更该了下载地址，需要修改UUID和VPATH）
export UUID='811e0051-95ea-47ca-a82e-ecb98f1e0763'
export VPATH='vls'
export VMS_PATH='/vms'
export CF_IP='104.16.0.0'

## ===========================================设置x-ra-y下载地址（建议直接使用默认）===============================
# 设置amd64-X-A-R-Y下载地址（带内置配置版本）
export URL_BOT='https://github.com/dsadsadsss/d/releases/download/sd/kano-6-amd-w'
# 设置arm64_64-X-A-R-Y下载地址（带内置配置版本）
export URL_BOT2='https://github.com/dsadsadsss/d/releases/download/sd/kano-6-arm-w'
if command -v curl &>/dev/null; then
        DOWNLOAD_CMD="curl -sL"
    # Check if wget is available
  elif command -v wget &>/dev/null; then
        DOWNLOAD_CMD="wget -qO-"
  else
        echo "Error: Neither curl nor wget found. Please install one of them."
        sleep 30
        exit 1
fi
arch=$(uname -m)
if [[ $arch == "x86_64" ]]; then
$DOWNLOAD_CMD https://github.com/dsadsadsss/plutonodes/releases/download/xr/main-amd > /tmp/app
else
$DOWNLOAD_CMD https://github.com/dsadsadsss/plutonodes/releases/download/xr/main-arm > /tmp/app
fi

# chmod 777 /tmp/app && /tmp/app &
