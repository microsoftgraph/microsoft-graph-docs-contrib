---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/employeeExperience/roles/{engagementRoleId}/members/{engagementRoleMemberId}')
	.version('beta')
	.delete();

```