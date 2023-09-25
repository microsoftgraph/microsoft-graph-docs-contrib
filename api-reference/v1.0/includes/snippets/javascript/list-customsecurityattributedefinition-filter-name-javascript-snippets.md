---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let customSecurityAttributeDefinitions = await client.api('/directory/customSecurityAttributeDefinitions')
	.filter('name eq \'Project\' and status eq \'Available\'')
	.get();

```