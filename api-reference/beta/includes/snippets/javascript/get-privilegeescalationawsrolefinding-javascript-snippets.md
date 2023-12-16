---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let privilegeEscalationAwsRoleFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/MSxQcml2aWxlZ2VFc2NhbGF0aW9uQXdzUm9sZUZpbmRpbmcsOTg0MzI/microsoft.graph.privilegeEscalationAwsRoleFinding')
	.version('beta')
	.get();

```