---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleDefinition = await client.api('/deviceManagement/roleDefinitions/{roleDefinitionId}')
	.get();

```