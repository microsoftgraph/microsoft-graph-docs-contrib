---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let privilegeEscalationUserFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.privilegeEscalationUserFinding')
	.version('beta')
	.get();

```