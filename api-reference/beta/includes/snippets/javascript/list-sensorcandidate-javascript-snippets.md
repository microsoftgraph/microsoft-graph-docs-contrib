---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sensorCandidates = await client.api('/security/identities/sensorCandidates')
	.version('beta')
	.get();

```