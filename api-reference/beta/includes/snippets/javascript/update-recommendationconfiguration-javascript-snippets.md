---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const recommendationConfiguration = {
   isNotificationEnabled: true
};

await client.api('/directory/recommendationConfiguration')
	.version('beta')
	.update(recommendationConfiguration);

```