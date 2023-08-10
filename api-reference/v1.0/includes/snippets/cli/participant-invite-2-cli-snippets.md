---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc communications calls participants invite post --call-id {call-id} --body '{\
  "participants": [\
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
  "clientContext": "f2fa86af-3c51-4bc2-8fc0-475452d9764f"\
}\
'

```