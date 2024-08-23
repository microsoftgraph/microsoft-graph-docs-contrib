---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let overprovisionedServerlessFunctionFinding = await client.api('/identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.overprovisionedServerlessFunctionFinding')
	.version('beta')
	.get();

```