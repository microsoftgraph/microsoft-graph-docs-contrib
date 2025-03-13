---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let superUserFinding = await client.api('/identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.superUserFinding')
	.version('beta')
	.get();

```