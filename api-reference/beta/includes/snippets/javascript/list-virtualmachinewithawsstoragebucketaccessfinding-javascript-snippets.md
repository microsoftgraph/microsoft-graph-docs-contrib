---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let virtualMachineWithAwsStorageBucketAccessFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.virtualMachineWithAwsStorageBucketAccessFinding')
	.version('beta')
	.get();

```