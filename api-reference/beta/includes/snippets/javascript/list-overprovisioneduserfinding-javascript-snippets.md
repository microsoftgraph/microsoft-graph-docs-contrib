---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let overprovisionedUserFinding = await client.api('/identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.overprovisionedUserFinding')
	.version('beta')
	.get();

```