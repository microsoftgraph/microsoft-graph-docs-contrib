---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const plannerTaskChatMessage = {
  content: '<div><span itemid=\"0\" itemtype=\"https://schema.skype.com/Mention/Person\"></span> Please review this task</div>',
  mentions: [
    {
      mentioned: '6463a5ce-2119-4198-9f2a-628761df4a62',
      position: 0,
      mentionType: 'user'
    }
  ]
};

await client.api('/planner/tasks/01gzSlKkIUSUl6DF_EilrmQAKDhh/messages')
	.version('beta')
	.post(plannerTaskChatMessage);

```