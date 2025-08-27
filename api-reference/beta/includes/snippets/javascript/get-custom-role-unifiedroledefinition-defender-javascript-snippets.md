---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let unifiedRoleDefinition = await client.api('/roleManagement/defender/roleDefinitions/f189965f-f560-4c59-9101-933d4c87a91b')
	.version('beta')
	.get();

```