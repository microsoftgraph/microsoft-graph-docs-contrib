---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceManagement = {
  '@odata.type': '#microsoft.graph.deviceManagement'
};

await client.api('/deviceManagement')
	.update(deviceManagement);

```