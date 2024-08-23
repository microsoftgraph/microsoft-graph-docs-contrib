---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let superAwsRoleFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.superAwsRoleFinding')
	.version('beta')
	.get();

```