---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let securityToolAwsServerlessFunctionAdministratorFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.securityToolAwsServerlessFunctionAdministratorFinding')
	.version('beta')
	.get();

```