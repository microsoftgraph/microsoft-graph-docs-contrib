---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const userSettings = {
  contributionToContentDiscoveryDisabled: true
};

await client.api('/me/settings')
	.update(userSettings);

```