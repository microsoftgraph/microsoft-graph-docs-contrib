---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let inactiveGcpServiceAccountFinding = await client.api('/identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.inactiveGcpServiceAccountFinding')
	.version('beta')
	.get();

```