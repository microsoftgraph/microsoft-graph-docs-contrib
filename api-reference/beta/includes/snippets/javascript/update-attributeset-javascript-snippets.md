---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const attributeSet = {
    description: 'Attributes for engineering team',
    maxAttributesPerSet: 20
};

await client.api('/directory/attributeSets/Engineering')
	.version('beta')
	.update(attributeSet);

```