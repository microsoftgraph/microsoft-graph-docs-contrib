---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let secretInformationAccessAwsUserFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.secretInformationAccessAwsUserFinding')
	.version('beta')
	.get();

```