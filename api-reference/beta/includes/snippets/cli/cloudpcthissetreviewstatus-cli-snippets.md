---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta device-management virtual-endpoint cloud-pcs set-review-status post --cloud-pcid {cloudPC-id} --body '{\
  "reviewStatus": {\
    "inReview": true,\
    "userAccessLevel": "restricted",\
    "azureStorageAccountId": "/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview"\
  }\
}\
'

```