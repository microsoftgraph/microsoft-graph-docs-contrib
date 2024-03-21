---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let inactiveAwsResourceFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveAwsResourceFinding')
	.version('beta')
	.get();

```