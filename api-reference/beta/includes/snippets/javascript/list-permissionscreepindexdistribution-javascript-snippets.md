---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let permissionsCreepIndexDistributions = await client.api('/identityGovernance/permissionsAnalytics/aws/permissionsCreepIndexDistributions')
	.version('beta')
	.get();

```