---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc teams send-activity-notification post --team-id {team-id} --body '{\
    "topic": {\
        "source": "entityUrl",\
        "value": "https://graph.microsoft.com/v1.0/teams/{teamId}/channels/{channelId}/tabs/{tabId}"\
    },\
    "activityType": "reservationUpdated",\
    "previewText": {\
        "content": "You have moved up the queue"\
    },\
    "recipient": {\
        "@odata.type": "microsoft.graph.aadUserNotificationRecipient",\
        "userId": "569363e2-4e49-4661-87f2-16f245c5d66a"\
    },\
    "templateParameters": [\
        {\
            "name": "reservationId",\
            "value": "TREEE433"\
        },\
        {\
            "name": "currentSlot",\
            "value": "23"\
        }\
    ]\
}\
'

```