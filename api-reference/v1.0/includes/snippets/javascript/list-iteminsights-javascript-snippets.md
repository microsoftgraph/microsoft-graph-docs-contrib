---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let insightsSettings = await client.api('/admin/people/itemInsights')
	.get();

```