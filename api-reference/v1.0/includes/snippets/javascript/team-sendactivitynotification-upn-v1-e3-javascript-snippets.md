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
        value: 'https://graph.microsoft.com/v1.0/teams/{teamId}/channels/{channelId}/tabs/{tabId}'
    },
    activityType: 'reservationUpdated',
    previewText: {
        content: 'You have moved up the queue'
    },
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

await client.api('/teams/{teamId}/sendActivityNotification')
	.post(sendActivityNotification);

```