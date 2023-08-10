---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc teams members add post --team-id {team-id} --body '{\
    "values": [\
        {\
            "@odata.type": "microsoft.graph.aadUserConversationMember",\
            "roles":[],\
            "user@odata.bind": "https://graph.microsoft.com/v1.0/users('jacob@contoso.com')"\
        },\
        {\
            "@odata.type": "microsoft.graph.aadUserConversationMember",\
            "roles":["owner"],\
            "user@odata.bind": "https://graph.microsoft.com/v1.0/users('alex@contoso.com')"\
        }\
    ]\
}\
'

```