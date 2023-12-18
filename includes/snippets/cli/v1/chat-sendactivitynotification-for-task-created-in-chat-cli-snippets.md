---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc chats send-activity-notification post --chat-id {chat-id} --body '{\
    "topic": {\
        "source": "entityUrl",\
        "value": "https://graph.microsoft.com/v1.0/chats/{chatId}"\
    },\
    "activityType": "taskCreated",\
    "previewText": {\
        "content": "New Task Created"\
    },\
    "recipient": {\
        "@odata.type": "microsoft.graph.aadUserNotificationRecipient",\
        "userId": "569363e2-4e49-4661-87f2-16f245c5d66a"\
    },\
    "templateParameters": [\
        {\
            "name": "taskId",\
            "value": "12322"\
        }\
    ]\
}\
'

```