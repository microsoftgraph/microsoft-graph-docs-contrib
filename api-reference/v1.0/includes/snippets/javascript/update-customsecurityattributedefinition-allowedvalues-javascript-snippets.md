---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const customSecurityAttributeDefinition = {
    'allowedValues@delta': [
        {
            id: 'Baker',
            isActive: false
        },
        {
            id: 'Skagit',
            isActive: true
        }
    ]
};

await client.api('/directory/customSecurityAttributeDefinitions/Engineering_Project')
	.update(customSecurityAttributeDefinition);

```