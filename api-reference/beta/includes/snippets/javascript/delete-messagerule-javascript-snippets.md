---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/me/mailFolders/inbox/messageRules/AQAAAJ5dZp8=')
	.version('beta')
	.delete();

```