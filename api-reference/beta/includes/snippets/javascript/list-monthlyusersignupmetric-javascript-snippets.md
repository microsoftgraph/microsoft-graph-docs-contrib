---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let signUps = await client.api('/reports/userInsights/monthly/signUps')
	.version('beta')
	.get();

```