---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const simulation = {
  '@odata.etag': '\"0100aa9b-0000-0100-0000-6396fa270000\"',
  id: '2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc',
  status: 'excluded'
};

await client.api('/security/attackSimulation/simulations/2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc')
	.version('beta')
	.update(simulation);

```