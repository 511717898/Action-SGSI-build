#!/bin/bash

LOCALDIR=`cd "$( dirname $0 )" && pwd`
cd $LOCALDIR

systemdir=$1

apps_dir="
Camera
Mipay
MIpay
MiuiBugReport
MIUIBugReport
MiuiCamera
MIUICamera
CatchLog
MIService
MiService
MiSound
MISound
MIUIAod
MiuiAod
NQNfcNci
MiuiVideo
MIUIVideo
Music
music
Browser
MIUIGallery
MiuiGallery
Mirror
MIrror
QCC-AUTHMGR
QCC
GmsCore
GooglePlayServicesUpdater
GoogleServicesFramework
MIUIQuickSearchBox
MiuiQuickSearchBox
QuickSearchBox
Backup
SogouInput
UPTsmService
VoiceTrigger
"

for delete_dir in $apps_dir ;do
  find $systemdir -type d -name "$delete_dir" | xargs rm -rf
done

rm -rf $1/data-app/*
