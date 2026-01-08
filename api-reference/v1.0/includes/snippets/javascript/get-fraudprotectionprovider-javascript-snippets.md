---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let fraudProtectionProvider = await client.api('/identity/riskPrevention/fraudProtectionProviders/0bb2618b-51f7-4e83-bcb8-84e70f7cf84d')
	.get();

```