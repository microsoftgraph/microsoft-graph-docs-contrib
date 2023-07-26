---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc users patch --user-id {user-id} --body '{\
    "customSecurityAttributes":\
    {\
        "Engineering":\
        {\
            "@odata.type":"#Microsoft.DirectoryServices.CustomSecurityAttributeValue",\
            "Project@odata.type":"#Collection(String)",\
            "Project":["Baker","Cascade"]\
        }\
    }\
}\
'

```