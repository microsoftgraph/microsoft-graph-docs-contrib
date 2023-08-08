---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc chats send-activity-notification post --chat-id {chat-id} --body '{\
    "topic": {\
        "source": "text",\
        "value": "Weekly Virtual Social",\
        "webUrl": "Teams webUrl"\
    },\
    "previewText": {\
        "content": "It will be fun!"\
    },\
    "activityType": "eventCreated",\
    "recipient": {\
        "@odata.type": "microsoft.graph.chatMembersNotificationRecipient",\
        "chatId": "19:d65713bc498c4a428c71ef9353e6ce20@thread.v2"\
    }\
}\
'

```