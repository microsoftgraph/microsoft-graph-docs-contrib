---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const updateNumber = {
  telephoneNumber: '+12061234567',
  networkSiteId: 'fff21455-0f84-4a6b-babd-0a9b46971a62',
};

await client.api('/admin/teams/telephoneNumberManagement/numberAssignments/updateNumber')
	.version('beta')
	.post(updateNumber);

```