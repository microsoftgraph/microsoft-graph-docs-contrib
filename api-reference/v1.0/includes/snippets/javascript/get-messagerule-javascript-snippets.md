---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let messageRule = await client.api('/me/mailFolders/inbox/messageRules/AQAABHg9by8=')
	.get();

```