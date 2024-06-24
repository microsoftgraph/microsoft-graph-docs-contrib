---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let externallyAccessibleAwsStorageBucketFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.externallyAccessibleAwsStorageBucketFinding')
	.version('beta')
	.get();

```