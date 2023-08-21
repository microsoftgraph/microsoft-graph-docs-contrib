---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc communications calls redirect post --call-id {call-id} --body '{\
  "targets": [\
    {\
      "@odata.type": "#microsoft.graph.invitationParticipantInfo",\
      "identity": {\
        "@odata.type": "#microsoft.graph.identitySet",\
        "phone": {\
          "@odata.type": "#microsoft.graph.identity",\
          "id": "+12345678901"\
        }\
      }\
    }\
  ],\
  "callbackUri": "https://bot.contoso.com/api/calls/24701998-1a73-4d42-8085-bf46ed0ae039"\
}\
'

```