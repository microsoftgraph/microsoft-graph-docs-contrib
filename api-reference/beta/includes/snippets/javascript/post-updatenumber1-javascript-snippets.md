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
  locationId: '93cb8a70-b4af-41df-9928-d07607e21776',
};

await client.api('/admin/teams/telephoneNumberManagement/numberAssignments/updateNumber')
	.version('beta')
	.post(updateNumber);

```