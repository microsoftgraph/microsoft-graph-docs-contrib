---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta storage file-storage containers share-point-groups members create --file-storage-container-id {fileStorageContainer-id} --share-point-group-id {sharePointGroup-id} --body '{\
  "@odata.type": "#microsoft.graph.sharePointGroupMember",\
  "identity": {\
    "user": {\
      "userPrincipalName": "john.smith@contoso.com"\
    }\
  }\
}\
'

```