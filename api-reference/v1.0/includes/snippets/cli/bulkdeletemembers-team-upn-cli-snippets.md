---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc teams members remove post --team-id {team-id} --body '{\
    "values": [\
        {\
            "@odata.type": "microsoft.graph.aadUserConversationMember",\
            "user@odata.bind": "https://graph.microsoft.com/v1.0/users('jacob@contoso.com')"\
        },\
        {\
            "@odata.type": "microsoft.graph.aadUserConversationMember",\
            "user@odata.bind": "https://graph.microsoft.com/v1.0/users('alex@contoso.com')"\
        }\
    ]\
}\
'

```