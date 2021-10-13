---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let simulationUsers = await client.api('/security/attackSimulation/simulations/{id}/report/simulationUsers')
	.version('beta')
	.get();

```