---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const plannerTaskChatMessage = {
  content: '<div>Updated message with <span itemid=\"0\" itemtype=\"https://schema.skype.com/Mention/Person\"></span> mention</div>',
  mentions: [
    {
      mentioned: '6463a5ce-2119-4198-9f2a-628761df4a62',
      position: 0,
      mentionType: 'user'
    }
  ]
};

await client.api('/planner/tasks/01gzSlKkIUSUl6DF_EilrmQAKDhh/messages/5bde7bc8-d998-4e8a-8159-93d4d7ccc3b5')
	.version('beta')
	.update(plannerTaskChatMessage);

```