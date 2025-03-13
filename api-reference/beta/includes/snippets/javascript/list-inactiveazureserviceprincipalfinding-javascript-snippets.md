---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let inactiveAzureServicePrincipalFinding = await client.api('/identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.inactiveAzureServicePrincipalFinding')
	.version('beta')
	.get();

```