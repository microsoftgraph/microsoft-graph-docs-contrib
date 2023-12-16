---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let superAzureServicePrincipalFinding = await client.api('/identityGovernance/permissionsAnalytics/azure/findings/MSxTdXBlckF6dXJlU2VydmljZVByaW5jaXBhbEZpbmRpbmcsMjI2ODM/microsoft.graph.superAzureServicePrincipalFinding')
	.version('beta')
	.get();

```