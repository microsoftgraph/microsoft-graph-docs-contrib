---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const userInsightsSettings = {
  isEnabled: 'false'
};

await client.api('/users/{userId}/settings/itemInsights')
	.update(userInsightsSettings);

```