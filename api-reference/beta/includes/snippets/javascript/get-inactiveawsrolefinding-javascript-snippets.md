---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let inactiveAwsRoleFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/MSxJbmFjdGl2ZUF3c1JvbGVGaW5kaW5nLDY1MTY0MA/microsoft.graph.inactiveAwsRoleFinding')
	.version('beta')
	.get();

```