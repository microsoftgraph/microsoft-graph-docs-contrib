---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta communications calls answer post --call-id {call-id} --body '{\
  "callbackUri": "https://bot.contoso.com/api/calls",\
  "acceptedModalities": [ "audio" ],\
  "mediaConfig": {\
    "@odata.type": "#microsoft.graph.appHostedMediaConfig",\
    "blob": "<Media Session Configuration Blob>"\
  }\
}\
'

```