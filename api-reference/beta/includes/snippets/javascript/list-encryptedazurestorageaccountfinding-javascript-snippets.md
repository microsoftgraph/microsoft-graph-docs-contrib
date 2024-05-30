---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let encryptedAzureStorageAccountFinding = await client.api('/identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.encryptedAzureStorageAccountFinding')
	.version('beta')
	.get();

```