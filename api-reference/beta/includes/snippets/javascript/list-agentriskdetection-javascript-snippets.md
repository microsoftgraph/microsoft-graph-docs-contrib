---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let agentRiskDetections = await client.api('/identityProtection/agentRiskDetections')
	.version('beta')
	.get();

```