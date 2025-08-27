---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/places/5e19bbf6-067c-4a92-9685-1f01545f02e4')
	.version('beta')
	.delete();

```