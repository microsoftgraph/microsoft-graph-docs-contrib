---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const businessScenario = {
  '@odata.type': '#microsoft.graph.businessScenario',
  displayName: 'Contoso Order Tracking',
  uniqueName: 'com.contoso.apps.ordertracking'
};

await client.api('/solutions/businessScenarios')
	.version('beta')
	.post(businessScenario);

```