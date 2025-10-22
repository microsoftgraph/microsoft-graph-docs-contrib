---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let readingCoachPassages = await client.api('/education/reports/readingCoachPassages')
	.filter('practicedAtDateTime gt 2025-06-22T00:00:00Z and practicedAtDateTime lt 2025-06-23T00:00:00Z')
	.get();

```