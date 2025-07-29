---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const engagementRoleMember = {
  'user@odata.bind': 'https://graph.microsoft.com/beta/users(\'userId\')'
};

await client.api('/employeeExperience/roles/{engagementRoleId}/members')
	.version('beta')
	.post(engagementRoleMember);

```