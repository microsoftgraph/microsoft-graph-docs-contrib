---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta device-management monitoring alert-rules patch --alert-rule-id {alertRule-id} --body '{\
  "severity": "informational",\
  "enabled": true,\
  "threshold": {\
      "aggregation": "count",\
      "operator": "greaterOrEqual",\
      "target": 90\
  },\
  "conditions": [\
      {\
        "relationshipType": "or",\
        "conditionCategory": "azureNetworkConnectionCheckFailures",\
        "aggregation": "count",\
        "operator": "greaterOrEqual",\
        "thresholdValue": "90"\
      }\
  ],\
  "notificationChannels": [\
      {\
        "notificationChannelType": "portal",\
        "notificationReceivers": []\
      },\
      {\
        "notificationChannelType": "email",\
        "notificationReceivers": [\
            {\
                "locale": "en-us",\
                "contactInformation": "serena.davis@contoso.com"\
            }\
        ]\
      }\
  ]\
}\
'

```