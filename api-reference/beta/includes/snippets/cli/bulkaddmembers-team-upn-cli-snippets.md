---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta teams members add post --team-id {team-id} --body '{\
    "values": [\
        {\
            "@odata.type": "microsoft.graph.aadUserConversationMember",\
            "roles":[],\
            "user@odata.bind": "https://graph.microsoft.com/beta/users('jacob@contoso.com')"\
        },\
        {\
            "@odata.type": "microsoft.graph.aadUserConversationMember",\
            "roles":["owner"],\
            "user@odata.bind": "https://graph.microsoft.com/beta/users('alex@contoso.com')"\
        }\
    ]\
}\
'

```