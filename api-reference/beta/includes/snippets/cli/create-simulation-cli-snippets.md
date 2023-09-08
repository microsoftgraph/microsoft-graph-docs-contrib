---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta security attack-simulation simulations create --body '{\
  "displayName": "Graph Simulation",\
  "payload@odata.bind":"https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a",\
  "durationInDays": 7,\
  "attackTechnique": "credentialHarvesting",\
  "status": "scheduled",\
  "includedAccountTarget": {\
    "@odata.type": "#microsoft.graph.addressBookAccountTargetContent",\
    "type" : "addressBook",\
    "accountTargetEmails" : [\
        "john@contoso.com"\
    ]\
  },\
}\
'

```