---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let overprovisionedAwsResourceFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/MSxPdmVycHJvdmlzaW9uZWRBd3NSZXNvdXJjZUZpbmRpbmcsMzExNDk/microsoft.graph.overprovisionedAwsResourceFinding')
	.version('beta')
	.get();

```