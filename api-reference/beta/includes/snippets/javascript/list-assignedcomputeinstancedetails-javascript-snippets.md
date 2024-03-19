---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let assignedComputeInstancesDetails = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/MSxPcGVuQXdzU2VjdXJpdHlHcm91cEZpbmRpbmcsNzE3MTg1/microsoft.graph.openAwsSecurityGroupFinding/assignedComputeInstancesDetails')
	.version('beta')
	.get();

```