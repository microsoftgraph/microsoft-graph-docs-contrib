---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unassignNumber = {
  telephoneNumber: '12061234567',
  numberType: 'directRouting'
};

await client.api('/admin/teams/telephoneNumberManagement/numberAssignments/unassignNumber')
	.version('beta')
	.post(unassignNumber);

```