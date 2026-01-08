---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sensorCandidateActivationConfiguration = await client.api('/security/identities/sensorCandidateActivationConfiguration')
	.version('beta')
	.get();

```