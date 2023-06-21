---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const customSecurityAttributeDefinition = {
    attributeSet: 'Engineering',
    description: 'Active projects for user',
    isCollection: true,
    isSearchable: true,
    name: 'Project',
    status: 'Available',
    type: 'String',
    usePreDefinedValuesOnly: true,
    allowedValues: [
        {
            id: 'Alpine',
            isActive: true
        },
        {
            id: 'Baker',
            isActive: true
        },
        {
            id: 'Cascade',
            isActive: true
        }
    ]
};

await client.api('/directory/customSecurityAttributeDefinitions')
	.post(customSecurityAttributeDefinition);

```