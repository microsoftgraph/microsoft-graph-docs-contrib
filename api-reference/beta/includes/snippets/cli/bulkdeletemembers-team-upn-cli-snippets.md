---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta teams members remove post --team-id {team-id} --body '{\
    "values": [\
        {\
            "@odata.type": "microsoft.graph.aadUserConversationMember",\
            "user@odata.bind": "https://graph.microsoft.com/beta/users('jacob@contoso.com')"\
        },\
        {\
            "@odata.type": "microsoft.graph.aadUserConversationMember",\
            "user@odata.bind": "https://graph.microsoft.com/beta/users('alex@contoso.com')"\
        }\
    ]\
}\
'

```