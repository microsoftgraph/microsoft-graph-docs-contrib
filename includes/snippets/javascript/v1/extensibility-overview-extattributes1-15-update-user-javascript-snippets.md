---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const user = {
    onPremisesExtensionAttributes: {
        extensionAttribute1: 'skypeId.adeleVance',
        extensionAttribute13: null
    }
};

await client.api('/users/071cc716-8147-4397-a5ba-b2105951cc0b')
	.update(user);

```