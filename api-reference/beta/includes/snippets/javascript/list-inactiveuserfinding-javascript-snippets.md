---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let inactiveUserFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveUserFinding')
	.version('beta')
	.get();

```