---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let inactiveUserFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/MSxJbmFjdGl2ZVVzZXJGaW5kaW5nLDI0MTI5MA/microsoft.graph.inactiveUserFinding')
	.version('beta')
	.get();

```