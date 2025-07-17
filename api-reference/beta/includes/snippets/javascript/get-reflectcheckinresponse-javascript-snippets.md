---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let reflectCheckInResponses = await client.api('/education/reports/reflectCheckInResponses')
	.version('beta')
	.get();

```