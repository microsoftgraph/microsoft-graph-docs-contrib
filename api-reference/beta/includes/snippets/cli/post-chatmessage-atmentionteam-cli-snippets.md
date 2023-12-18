---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta teams channels messages create --team-id {team-id} --channel-id {channel-id} --body '{\
    "body": {\
        "contentType": "html",\
        "content": "<div><div><at id=\"0\">GraphTesting</at>&nbsp;Hello team</div></div>"\
    },\
    "mentions": [\
        {\
            "id": 0,\
            "mentionText": "GraphTesting",\
            "mentioned": {\
                "conversation": {\
                    "id": "68a3e365-f7d9-4a56-b499-24332a9cc572",\
                    "displayName": "GraphTesting",\
                    "conversationIdentityType": "team"\
                }\
            }\
        }\
    ],\
    "reactions": [],\
    "messageHistory": []\
}\
'

```