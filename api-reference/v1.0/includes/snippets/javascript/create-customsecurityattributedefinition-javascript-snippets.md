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
    description: 'Target completion date',
    isCollection: false,
    isSearchable: true,
    name: 'ProjectDate',
    status: 'Available',
    type: 'String',
    usePreDefinedValuesOnly: false
};

await client.api('/directory/customSecurityAttributeDefinitions')
	.post(customSecurityAttributeDefinition);

```