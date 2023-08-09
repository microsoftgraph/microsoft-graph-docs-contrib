---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let unifiedRoleDefinition = await client.api('/roleManagement/exchange/roleDefinitions/7224da60-d8e2-4f45-9380-8e4fda64e133')
	.version('beta')
	.get();

```