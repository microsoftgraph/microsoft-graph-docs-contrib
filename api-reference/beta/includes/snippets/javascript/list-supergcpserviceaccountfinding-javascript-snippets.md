---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let superGcpServiceAccountFinding = await client.api('/identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.superGcpServiceAccountFinding')
	.version('beta')
	.get();

```