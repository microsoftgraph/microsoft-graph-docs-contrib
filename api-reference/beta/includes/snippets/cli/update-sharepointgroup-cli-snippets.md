---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta storage file-storage containers share-point-groups patch --file-storage-container-id {fileStorageContainer-id} --share-point-group-id {sharePointGroup-id} --body '{\
  "@odata.type": "#microsoft.graph.sharePointGroup",\
  "title" : "This is the new group title",\
  "description": "Updated group description"\
}\
'

```