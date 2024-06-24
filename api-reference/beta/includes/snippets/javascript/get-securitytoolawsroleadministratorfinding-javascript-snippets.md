---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let securityToolAwsRoleAdministratorFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/YXdzU2VjdXJpdHlUb29sQWRtaW5pc3RyYXRpb25GaW5kaW5nMw/microsoft.graph.securityToolAwsRoleAdministratorFinding')
	.version('beta')
	.get();

```