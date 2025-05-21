---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let delegationSettings = await client.api('/me/communications/callSettings/delegates/62de48e1-a72c-40db-9193-a3bd8cf167c9')
	.version('beta')
	.get();

```