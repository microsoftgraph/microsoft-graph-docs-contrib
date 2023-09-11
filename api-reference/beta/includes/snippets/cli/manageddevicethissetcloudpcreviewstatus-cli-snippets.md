---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta device-management managed-devices set-cloud-pc-review-status post --managed-device-id {managedDevice-id} --body '{\
  "reviewStatus": {\
    "inReview": true,\
    "userAccessLevel": "restricted",\
    "azureStorageAccountId": "/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview"\
  }\
}\
'

```