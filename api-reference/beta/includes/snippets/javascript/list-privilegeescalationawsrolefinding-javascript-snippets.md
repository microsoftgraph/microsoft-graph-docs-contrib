---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let privilegeEscalationAwsRoleFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.privilegeEscalationAwsRoleFinding')
	.version('beta')
	.get();

```