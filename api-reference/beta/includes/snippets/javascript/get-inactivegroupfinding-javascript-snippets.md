---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let inactiveGroupFinding = await client.api('/identityGovernance/permissionsAnalytics/gcp/findings/MSxJbmFjdGl2ZUdyb3VwRmluZGluZyw2MDI0NA/microsoft.graph.inactiveGroupFinding')
	.version('beta')
	.get();

```