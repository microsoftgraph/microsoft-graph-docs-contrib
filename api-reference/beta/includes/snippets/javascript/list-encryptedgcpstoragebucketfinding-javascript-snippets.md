---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let encryptedGcpStorageBucketFinding = await client.api('/identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.encryptedGcpStorageBucketFinding')
	.version('beta')
	.get();

```