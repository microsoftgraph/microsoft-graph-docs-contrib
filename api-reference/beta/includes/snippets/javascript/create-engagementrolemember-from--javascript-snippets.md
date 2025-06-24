---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const engagementRoleMember = {
  '@odata.type': '#microsoft.graph.engagementrolemember',
  userId: 'String'
};

await client.api('/employeeExperience/roles/{engagementRoleId}/members')
	.version('beta')
	.post(engagementRoleMember);

```