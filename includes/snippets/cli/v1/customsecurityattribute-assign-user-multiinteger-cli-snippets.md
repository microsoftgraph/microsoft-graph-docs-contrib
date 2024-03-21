---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc users patch --user-id {user-id} --body '{\
    "customSecurityAttributes":\
    {\
        "Engineering":\
        {\
            "@odata.type":"#Microsoft.DirectoryServices.CustomSecurityAttributeValue",\
            "CostCenter@odata.type":"#Collection(Int32)",\
            "CostCenter":[1001,1003]\
        }\
    }\
}\
'

```