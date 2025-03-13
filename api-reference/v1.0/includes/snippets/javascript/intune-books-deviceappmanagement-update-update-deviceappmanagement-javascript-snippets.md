---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceAppManagement = {
  '@odata.type': '#microsoft.graph.deviceAppManagement'
};

await client.api('/deviceAppManagement')
	.update(deviceAppManagement);

```