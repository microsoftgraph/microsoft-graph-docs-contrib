---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc communications calls answer post --call-id {call-id} --body '{\
  "callbackUri": "https://bot.contoso.com/api/calls",\
  "acceptedModalities": [ "audio" ],\
  "mediaConfig": {\
    "@odata.type": "#microsoft.graph.serviceHostedMediaConfig",\
    "preFetchMedia": [\
      {\
        "uri": "https://cdn.contoso.com/beep.wav",\
        "resourceId": "1D6DE2D4-CD51-4309-8DAA-70768651088E"\
      },\
      {\
        "uri": "https://cdn.contoso.com/cool.wav",\
        "resourceId": "1D6DE2D4-CD51-4309-8DAA-70768651088F"\
      }\
    ]\
  }\
}\
'

```