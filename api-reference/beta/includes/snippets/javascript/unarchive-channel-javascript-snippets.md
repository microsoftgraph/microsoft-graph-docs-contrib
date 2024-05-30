---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/teams/{team-id}/channels/{channel-id}/unarchive')
	.version('beta')
	.post();

```