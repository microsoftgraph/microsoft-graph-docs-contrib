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
    value: 'Deployment Approvals Channel',
    webUrl: 'https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000'
  },
  activityType: 'announcementPosted',
  previewText: {
    content: 'new announcemnet posted'
  },
  iconId: 'announcementCreated',
  templateParameters: [
    {
      name: 'deploymentId',
      value: '6788662'
    }
  ]
};

await client.api('/users/2f39ffba-51ca-4d2d-a66f-a020a83ce208/teamwork/sendActivityNotification')
	.post(sendActivityNotification);

```