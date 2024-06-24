---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let awsIdentityAccessManagementKeyAgeFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.awsIdentityAccessManagementKeyAgeFinding')
	.version('beta')
	.get();

```