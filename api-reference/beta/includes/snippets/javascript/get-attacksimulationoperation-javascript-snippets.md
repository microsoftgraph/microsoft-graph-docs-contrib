---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let attackSimulationOperation = await client.api('/security/attackSimulation/operations/f1b13829-3829-f1b1-2938-b1f12938b1a')
	.version('beta')
	.get();

```