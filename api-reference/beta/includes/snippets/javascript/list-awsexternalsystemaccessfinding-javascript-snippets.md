---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let awsExternalSystemAccessFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.awsExternalSystemAccessFinding')
	.version('beta')
	.get();

```