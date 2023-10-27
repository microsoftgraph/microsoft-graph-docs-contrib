---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const resourceOperation = {
  '@odata.type': '#microsoft.graph.resourceOperation',
  resourceName: 'Resource Name value',
  actionName: 'Action Name value',
  description: 'Description value'
};

await client.api('/deviceManagement/resourceOperations/{resourceOperationId}')
	.update(resourceOperation);

```