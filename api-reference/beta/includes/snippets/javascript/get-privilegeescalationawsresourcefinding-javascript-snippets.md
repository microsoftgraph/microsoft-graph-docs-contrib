---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let privilegeEscalationAwsResourceFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/cHJpdmlsZWdlRXNjYWxhdGlvblJlc291cmNlRmluZGluZzEwMDAx/microsoft.graph.privilegeEscalationAwsResourceFinding')
	.version('beta')
	.get();

```