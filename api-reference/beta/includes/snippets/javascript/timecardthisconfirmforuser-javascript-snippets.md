---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const timeCard = {
  userId: 'd56f3e8a-2b0f-42b1-88b9-e2dbd12a34d2'
};

await client.api('/teams/fd15cad8-80f6-484f-9666-3caf695fbf32/schedule/timeCards/TCK_95c44dff-bc12-4de2-8a9a-9772e4421eb4/confirmForUser')
	.version('beta')
	.post(timeCard);

```