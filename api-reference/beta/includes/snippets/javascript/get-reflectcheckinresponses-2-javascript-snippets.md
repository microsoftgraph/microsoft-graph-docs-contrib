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
	.filter('submitDateTime gt 2023-10-10T00:00:00.000Z and submitDateTime lt 2023-10-11T00:00:00.000Z')
	.get();

```