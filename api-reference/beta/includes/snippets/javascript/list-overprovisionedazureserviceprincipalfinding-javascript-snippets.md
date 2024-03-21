---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let finding = await client.api('/identityGovernance/permissionsAnalytics/azure/findings/overprovisionedAzureServicePrincipalFinding')
	.version('beta')
	.get();

```