---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let fraudProtectionProviders = await client.api('/identity/riskprevention/fraudprotectionproviders')
	.version('beta')
	.get();

```