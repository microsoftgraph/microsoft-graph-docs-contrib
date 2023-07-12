---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc chats send-activity-notification post --chat-id {chat-id} --body '{\
    "topic": {\
        "source": "entityUrl",\
        "value": "https://graph.microsoft.com/v1.0/chats/{chatId}/messages/{messageId}"\
    },\
    "activityType": "approvalRequired",\
    "previewText": {\
        "content": "Deployment requires your approval"\
    },\
    "recipient": {\
        "@odata.type": "microsoft.graph.aadUserNotificationRecipient",\
        "userId": "jacob@contoso.com"\
    },\
    "templateParameters": [\
        {\
            "name": "approvalTaskId",\
            "value": "2020AAGGTAPP"\
        }\
    ]\
}\
'

```