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
  reverseNumberLookupOptions: ['skipInternalVoip'],
};

await client.api('/admin/teams/telephoneNumberManagement/numberAssignments/updateNumber')
	.version('beta')
	.post(updateNumber);

```