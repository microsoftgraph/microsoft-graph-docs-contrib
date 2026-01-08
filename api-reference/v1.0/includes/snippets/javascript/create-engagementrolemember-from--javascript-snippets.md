---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const engagementRoleMember = {
  'user@odata.bind': 'https://graph.microsoft.com/v1.0/users(\'e8d9f6a2-1c34-4b7a-9f11-2a4d8b7c9e01\')'
};

await client.api('/employeeExperience/roles/a40473a5-0fb4-a250-e029-f6fe33d07733/members')
	.post(engagementRoleMember);

```