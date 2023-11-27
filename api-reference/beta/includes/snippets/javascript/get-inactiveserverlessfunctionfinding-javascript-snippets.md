---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let inactiveServerlessFunctionFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/MSxJbmFjdGl2ZVNlcnZlcmxlc3NGdW5jdGlvbkZpbmRpbmcsNTA2MjM/microsoft.graph.inactiveServerlessFunctionFinding')
	.version('beta')
	.get();

```