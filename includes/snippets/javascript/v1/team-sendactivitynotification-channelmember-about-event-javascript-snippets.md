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
        webUrl: 'https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000'
    },
    previewText: {
        content: 'It will be fun!'
    },
    activityType: 'eventCreated',
    recipient: {
        '@odata.type': 'microsoft.graph.channelMembersNotificationRecipient',
        teamId: '7155e3c8-175e-4311-97ef-572edc3aa3db',
        channelId: '19:0ea5de04de4743bcb4cd20cb99235d99@thread.tacv2'
    }
};

await client.api('/teams/7155e3c8-175e-4311-97ef-572edc3aa3db/sendActivityNotification')
	.post(sendActivityNotification);

```