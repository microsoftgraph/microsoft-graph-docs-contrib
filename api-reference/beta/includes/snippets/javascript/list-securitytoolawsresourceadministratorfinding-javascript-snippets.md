---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let securityToolAwsResourceAdministratorFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.securityToolAwsResourceAdministratorFinding')
	.version('beta')
	.get();

```