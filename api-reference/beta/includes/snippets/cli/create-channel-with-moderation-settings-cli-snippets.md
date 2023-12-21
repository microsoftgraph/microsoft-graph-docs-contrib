---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
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