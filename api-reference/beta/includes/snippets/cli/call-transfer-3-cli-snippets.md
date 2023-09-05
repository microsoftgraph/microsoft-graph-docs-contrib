---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta communications calls transfer post --call-id {call-id} --body '{\
  "transferTarget": {\
    "endpointType": "default",\
    "identity": {\
        "phone": {\
          "@odata.type": "#microsoft.graph.identity",\
          "id": "+12345678901"\
        }\
    },\
    "languageId": "languageId-value",\
    "region": "region-value"\
  }\
}\
'

```