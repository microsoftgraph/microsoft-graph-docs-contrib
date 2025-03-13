---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let secretInformationAccessAwsRoleFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.secretInformationAccessAwsRoleFinding')
	.version('beta')
	.get();

```