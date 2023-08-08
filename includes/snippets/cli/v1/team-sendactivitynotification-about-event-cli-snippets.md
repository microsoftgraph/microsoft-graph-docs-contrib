---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc teams send-activity-notification post --team-id {team-id} --body '{\
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
        "@odata.type": "microsoft.graph.teamMembersNotificationRecipient",\
        "teamId": "7155e3c8-175e-4311-97ef-572edc3aa3db"\
    }\
}\
'

```