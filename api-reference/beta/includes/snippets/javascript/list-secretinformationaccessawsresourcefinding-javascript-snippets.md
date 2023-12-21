---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let secretInformationAccessAwsResourceFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.secretInformationAccessAwsResourceFinding')
	.version('beta')
	.get();

```