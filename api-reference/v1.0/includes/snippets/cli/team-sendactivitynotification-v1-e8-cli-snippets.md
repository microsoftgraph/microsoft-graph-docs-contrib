---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc teams send-activity-notification post --team-id {team-id} --body '{\
  "topic": {\
    "source": "entityUrl",\
    "value": "https://graph.microsoft.com/v1.0/teams/{teamId}/channels/{channelId}/messages/{messageId}/replies/{replyId}"\
  },\
  "activityType": "announcementPosted",\
  "previewText": {\
    "content": "new announcemnet posted"\
  },\
  "iconId": "announcementCreated",\
  "recipient": {\
    "@odata.type": "microsoft.graph.aadUserNotificationRecipient",\
    "userId": "jacob@contoso.com"\
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