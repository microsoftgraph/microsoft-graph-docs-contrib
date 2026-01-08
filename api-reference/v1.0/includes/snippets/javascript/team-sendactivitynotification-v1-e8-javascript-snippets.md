---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sendActivityNotification = {
  topic: {
    source: 'entityUrl',
    value: 'https://graph.microsoft.com/v1.0/teams/{teamId}/channels/{channelId}/messages/{messageId}/replies/{replyId}'
  },
  activityType: 'announcementPosted',
  previewText: {
    content: 'new announcemnet posted'
  },
  iconId: 'announcementCreated',
  recipient: {
    '@odata.type': 'microsoft.graph.aadUserNotificationRecipient',
    userId: 'jacob@contoso.com'
  },
  templateParameters: [
    {
      name: 'reservationId',
      value: 'TREEE433'
    },
    {
      name: 'currentSlot',
      value: '23'
    }
  ]
};

await client.api('/teams/e8bece96-d393-4b9b-b8da-69cedef1a7e7/sendActivityNotification')
	.post(sendActivityNotification);

```