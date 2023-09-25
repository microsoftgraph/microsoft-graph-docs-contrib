---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let retentionEvents = await client.api('/security/triggers/retentionEvents')
	.get();

```