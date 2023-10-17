---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta external connections items put --external-connection-id {externalConnection-id} --external-item-id {externalItem-id} --body '{\
  "acl": [\
    {\
      "type": "user",\
      "value": "e811976d-83df-4cbd-8b9b-5215b18aa874",\
      "accessType": "grant",\
      "identitySource": "azureActiveDirectory"\
    },\
    {\
      "type": "group",\
      "value": "14m1b9c38qe647f6a",\
      "accessType": "deny",\
      "identitySource": "external"\
    }\
  ],\
  "properties": {\
    "title": "Error in the payment gateway",\
    "priority": 1,\
    "assignee": "john@contoso.com"\
  },\
  "content": {\
    "value": "Error in payment gateway...",\
    "type": "text"\
  }\
}\
'

```