---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let assignmentSchedules = await client.api('/identityGovernance/privilegedAccess/group/assignmentSchedules?filter=principalId eq \'3cce9d87-3986-4f19-8335-7ed075408ca2\'')
	.version('beta')
	.filter('principalId eq \'3cce9d87-3986-4f19-8335-7ed075408ca2\'')
	.get();

```