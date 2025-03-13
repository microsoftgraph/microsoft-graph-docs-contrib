---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let externallyAccessibleAzureBlobContainerFinding = await client.api('/identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.externallyAccessibleAzureBlobContainerFinding')
	.version('beta')
	.get();

```