---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let readingCoachPassages = await client.api('/education/reports/readingCoachPassages')
	.version('beta')
	.get();

```