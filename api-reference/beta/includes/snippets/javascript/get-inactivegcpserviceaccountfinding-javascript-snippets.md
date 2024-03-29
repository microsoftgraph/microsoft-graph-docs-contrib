---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let inactiveGcpServiceAccountFinding = await client.api('/identityGovernance/permissionsAnalytics/gcp/findings/MSxJbmFjdGl2ZUdjcFNlcnZpY2VBY2NvdW50RmluZGluZywxNDM1NjM/microsoft.graph.inactiveGcpServiceAccountFinding')
	.version('beta')
	.get();

```