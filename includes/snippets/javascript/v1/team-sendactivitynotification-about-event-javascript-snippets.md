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
        source: 'text',
        value: 'Weekly Virtual Social',
        webUrl: 'Teams webUrl'
    },
    previewText: {
        content: 'It will be fun!'
    },
    activityType: 'eventCreated',
    recipient: {
        '@odata.type': 'microsoft.graph.teamMembersNotificationRecipient',
        teamId: '7155e3c8-175e-4311-97ef-572edc3aa3db'
    }
};

await client.api('/teams/7155e3c8-175e-4311-97ef-572edc3aa3db/sendActivityNotification')
	.post(sendActivityNotification);

```