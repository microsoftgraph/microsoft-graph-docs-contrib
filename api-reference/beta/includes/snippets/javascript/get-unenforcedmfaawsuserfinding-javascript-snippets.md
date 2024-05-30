---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let unenforcedMfaAwsUserFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/MSxVbmVuZm9yY2VkTWZhQXdzVXNlckZpbmRpbmcsNjUzMjU/microsoft.graph.unenforcedMfaAwsUserFinding')
	.version('beta')
	.get();

```