---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta security attack-simulation simulations patch --simulation-id {simulation-id} --body '{\
  "@odata.etag": "\"0100aa9b-0000-0100-0000-6396fa270000\"",\
  "displayName": "Graph Simulation",\
  "payload@odata.bind":"https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a",\
  "durationInDays": 7,\
  "attackTechnique": "credentialHarvesting",\
  "attackType": "social",\
  "status": "scheduled",\
  "includedAccountTarget": {\
    "@odata.type": "#microsoft.graph.addressBookAccountTargetContent",\
    "type" : "addressBook",\
    "accountTargetEmails" : [\
        "faiza@contoso.com"\
    ]\
  },\
  "excludedAccountTarget": {\
    "@odata.type": "#microsoft.graph.addressBookAccountTargetContent",\
    "type" : "addressBook",\
    "accountTargetEmails" : [\
        "sam@contoso.com"\
    ]\
  }\
}\
'

```