---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let overprovisionedGcpServiceAccountFinding = await client.api('/identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.overprovisionedGcpServiceAccountFinding')
	.version('beta')
	.get();

```