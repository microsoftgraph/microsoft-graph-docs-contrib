---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let landingPages = await client.api('/security/attackSimulation/landingPages')
	.version('beta')
	.filter('source eq \'tenant\'')
	.get();

```