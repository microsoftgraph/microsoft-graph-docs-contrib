---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc teams channels messages create --team-id {team-id} --channel-id {channel-id} --body '{\
    "body": {\
        "contentType": "html",\
        "content": "<at id=\"0\">General</at>&nbsp;Hello there!"\
    },\
    "mentions": [\
        {\
            "id": 0,\
            "mentionText": "General",\
            "mentioned": {\
                "conversation": {\
                    "id": "19:0b50940236084d258c97b21bd01917b0@thread.skype",\
                    "displayName": "General",\
                    "conversationIdentityType": "channel"\
                }\
            }\
        }\
    ]\
}\
'

```