---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let superServerlessFunctionFinding = await client.api('/identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.superServerlessFunctionFinding')
	.version('beta')
	.get();

```