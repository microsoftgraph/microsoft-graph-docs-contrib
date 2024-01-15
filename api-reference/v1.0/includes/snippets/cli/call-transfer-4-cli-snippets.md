---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc communications calls transfer post --call-id {call-id} --body '{\
  "transferTarget": {\
    "@odata.type": "#microsoft.graph.invitationParticipantInfo",\
    "endpointType": "default",\
    "identity": {\
      "@odata.type": "#microsoft.graph.identitySet",\
        "phone": {\
          "@odata.type": "#microsoft.graph.identity",\
          "id": "+12345678901"\
        }\
    },\
    "languageId": "en-us",\
    "region": "amer",\
    "replacesCallId": "e5d39592-99bd-4db8-bca8-30fb894ec51d"\
  },\
  "clientContext": "9e90d1c1-f61e-43e7-9f75-d420159aae08"\
}\
'

```