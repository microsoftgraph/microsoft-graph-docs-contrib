---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let awsExternalSystemAccessRoleFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.awsExternalSystemAccessRoleFinding')
	.version('beta')
	.get();

```