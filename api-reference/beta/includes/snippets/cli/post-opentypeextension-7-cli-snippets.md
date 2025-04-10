---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta drives items children create --drive-id {drive-id} --drive-item-id {driveItem-id} --body '{\
  "name": "New Item",\
  "@microsoft.graph.conflictBehavior": "rename",\
  "extensions": [\
    {\
      "extensionName": "myCustomExtension",\
      "myCustomString": "Contoso data",\
      "myCustomBool": false\
    }\
  ]\
}\
'

```