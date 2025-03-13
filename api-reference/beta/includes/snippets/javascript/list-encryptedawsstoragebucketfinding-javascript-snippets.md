---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let encryptedAwsStorageBucketFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.encryptedAwsStorageBucketFinding')
	.version('beta')
	.get();

```