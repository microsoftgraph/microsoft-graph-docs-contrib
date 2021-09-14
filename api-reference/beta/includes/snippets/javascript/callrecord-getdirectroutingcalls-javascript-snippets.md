---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let callRecord = await client.api('/communications/callRecords/getDirectRoutingCalls(fromDateTime=2019-11-01,toDateTime=2019-12-01)')
	.version('beta')
	.get();

```