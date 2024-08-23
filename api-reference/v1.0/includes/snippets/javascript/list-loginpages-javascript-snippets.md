---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let loginPages = await client.api('/security/attackSimulation/loginPages')
	.filter('source eq \'tenant\'')
	.get();

```