---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta role-management exchange custom-app-scopes create --body '{\
    "type": "RecipientScope",\
    "displayName": "Protected Exec Users",\
    "customAttributes": {\
        "Exclusive": false,\
        "RecipientFilter": "Title -like 'VP*'"\
    }\
}\
'

```