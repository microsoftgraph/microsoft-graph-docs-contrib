---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const device = {
    extensionAttributes: {
        extensionAttribute1: 'BYOD-Device'
    }
};

await client.api('/devices/{id}')
	.version('beta')
	.update(device);

```