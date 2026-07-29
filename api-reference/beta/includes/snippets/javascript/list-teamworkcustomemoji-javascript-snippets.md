---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let customEmojis = await client.api('/teamwork/messaging/customEmojis')
	.version('beta')
	.get();

```