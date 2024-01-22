---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let authentications = await client.api('/reports/userInsights/monthly/authentications')
	.version('beta')
	.get();

```