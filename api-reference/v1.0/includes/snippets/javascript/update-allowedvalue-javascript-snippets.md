---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const allowedValue = {
    isActive: 'false'
};

await client.api('/directory/customSecurityAttributeDefinitions/Engineering_Project/allowedValues/Alpine')
	.update(allowedValue);

```