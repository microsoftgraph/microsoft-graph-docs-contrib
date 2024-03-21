---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta device-management virtual-endpoint reports get-action-status-reports post --body '{\
  "filter": "ActionState eq 'failed'",\
  "select": [\
    "Id",\
    "CloudPcDeviceDisplayName",\
    "BulkActionId",\
    "BulkActionDisplayName",\
    "CloudPcId",\
    "InitiatedByUserPrincipalName",\
    "DeviceOwnerUserPrincipalName",\
    "Action",\
    "ActionState",\
    "RequestDateTime",\
    "LastUpdatedDateTime",\
    "ActionParameters"\
  ],\
  "skip": 0,\
  "top": 50\
}\
'

```