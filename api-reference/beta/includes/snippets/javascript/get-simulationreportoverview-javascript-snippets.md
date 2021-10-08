---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let simulationReportOverview = await client.api('/security/attackSimulation/simulations/{id}/report/overview')
	.version('beta')
	.get();

```