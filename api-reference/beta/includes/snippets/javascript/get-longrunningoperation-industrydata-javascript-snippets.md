---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let longRunningOperation = await client.api('/external/industryData/operations/d194fa3e-18c9-47a1-0fb1-08dad8e7a876')
	.version('beta')
	.get();

```