---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const attributeSet = {
    id: 'Engineering',
    description: 'Attributes for engineering team',
    maxAttributesPerSet: 25
};

await client.api('/directory/attributeSets')
	.version('beta')
	.post(attributeSet);

```