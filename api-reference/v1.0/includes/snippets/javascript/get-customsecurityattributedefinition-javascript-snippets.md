---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let customSecurityAttributeDefinition = await client.api('/directory/customSecurityAttributeDefinitions/Engineering_ProjectDate')
	.get();

```