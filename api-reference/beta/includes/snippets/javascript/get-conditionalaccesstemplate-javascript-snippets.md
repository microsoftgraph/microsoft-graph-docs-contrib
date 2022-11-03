---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let conditionalAccessTemplate = await client.api('/identity/conditionalAccess/templates/c7503427-338e-4c5e-902d-abe252abfb43')
	.version('beta')
	.get();

```