---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let simulations = await client.api('/security/attackSimulation/simulations')
	.version('beta')
	.get();

```