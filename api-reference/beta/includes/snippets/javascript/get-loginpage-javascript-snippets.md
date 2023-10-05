---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let loginPage = await client.api('/security/attackSimulation/loginPages/2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc')
	.version('beta')
	.get();

```