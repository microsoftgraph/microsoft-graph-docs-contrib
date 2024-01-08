---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let mfaCompletions = await client.api('/reports/userInsights/daily/mfaCompletions')
	.version('beta')
	.get();

```