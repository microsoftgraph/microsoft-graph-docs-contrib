---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const businessScenario = {
  ownerAppIds: [
      '44109254-4b2b-7a33-76ee-c890a167b295', '13eb9d8b-1d63-4153-9417-3a69ab200a78'
  ]
};

await client.api('/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d')
	.version('beta')
	.update(businessScenario);

```