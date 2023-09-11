---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let simulationAutomations = await client.api('/security/attackSimulation/simulationAutomations')
	.get();

```