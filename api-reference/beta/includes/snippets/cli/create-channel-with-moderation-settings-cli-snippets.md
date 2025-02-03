---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta teams channels create --team-id {team-id} --body '{\
    "displayName": "TestChannelModeration",\
    "description": "Test channel moderation.",\
    "membershipType": "standard",\
    "moderationSettings": {\
        "userNewMessageRestriction": "everyoneExceptGuests",\
        "replyRestriction": "everyone",\
        "allowNewMessageFromBots": true,\
        "allowNewMessageFromConnectors": true\
    }\
}\
'

```