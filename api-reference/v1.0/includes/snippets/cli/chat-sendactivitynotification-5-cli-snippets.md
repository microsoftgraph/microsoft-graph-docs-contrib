---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc chats send-activity-notification post --chat-id {chat-id} --body '{\
    "topic": {\
        "source": "entityUrl",\
        "value": "https://graph.microsoft.com/v1.0/chats/19:1c3af46e9e0f4a5293343c8813c47619@thread.v2"\
    },\
    "activityType": "taskCreated",\
    "previewText": {\
        "content": "New Task Created"\
    },\
    "recipient": {\
        "@odata.type": "microsoft.graph.chatMembersNotificationRecipient",\
        "chatId": "19:1c3af46e9e0f4a5293343c8813c47619@thread.v2"\
    },\
    "templateParameters": [\
        {\
            "name": "taskId",\
            "value": "Task 12322"\
        }\
    ] \
}\
'

```