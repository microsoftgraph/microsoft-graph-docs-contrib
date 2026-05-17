---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let generativeAIInsights = await client.api('/networkAccess/logs/generativeAiInsights')
	.version('beta')
	.filter('activity eq \'prompt\'')
	.orderby('createdDateTime desc')
	.top(25)
	.get();

```