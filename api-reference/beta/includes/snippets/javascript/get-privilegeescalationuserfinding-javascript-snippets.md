---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let privilegeEscalationUserFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/MSxQcml2aWxlZ2VFc2NhbGF0aW9uVXNlckZpbmRpbmcsNjI4MzQ/microsoft.graph.privilegeEscalationUserFinding')
	.version('beta')
	.get();

```