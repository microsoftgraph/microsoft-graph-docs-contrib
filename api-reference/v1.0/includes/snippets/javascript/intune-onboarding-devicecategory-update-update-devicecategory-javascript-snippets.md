---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceCategory = {
  '@odata.type': '#microsoft.graph.deviceCategory',
  displayName: 'Display Name value',
  description: 'Description value'
};

await client.api('/deviceManagement/deviceCategories/{deviceCategoryId}')
	.update(deviceCategory);

```