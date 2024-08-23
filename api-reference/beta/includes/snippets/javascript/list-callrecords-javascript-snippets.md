---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let callRecords = await client.api('/communications/callRecords')
	.version('beta')
	.get();

```