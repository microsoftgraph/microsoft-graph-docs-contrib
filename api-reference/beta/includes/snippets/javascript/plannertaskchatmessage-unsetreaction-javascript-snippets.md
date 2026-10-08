---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unsetReaction = {
  reactionType: 'like'
};

await client.api('/planner/tasks/01gzSlKkIUSUl6DF_EilrmQAKDhh/messages/5bde7bc8-d998-4e8a-8159-93d4d7ccc3b5/unsetReaction')
	.version('beta')
	.post(unsetReaction);

```