---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let trainingCampaigns = await client.api('/security/attackSimulation/trainingCampaigns')
	.version('beta')
	.get();

```