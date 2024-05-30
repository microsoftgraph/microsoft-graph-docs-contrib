---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let securityToolAwsUserAdministratorFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NDA/microsoft.graph.securityToolAwsUserAdministratorFinding')
	.version('beta')
	.get();

```