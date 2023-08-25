---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta device-management managed-devices bulk-set-cloud-pc-review-status post --body '{\
  "managedDeviceIds": [\
    "30d0e128-de93-41dc-89ec-33d84bb662a0",\
    "7c82a3e3-9459-44e4-94d9-b92f93bf78dd"\
  ],\
  "reviewStatus": {\
    "inReview": true,\
    "userAccessLevel": "restricted",\
    "azureStorageAccountId": "/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview"\
  }\
}\
'

```