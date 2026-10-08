---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let numberAssignments = await client.api('/admin/teams/telephoneNumberManagement/numberAssignments')
	.version('beta')
	.skip(200)
	.top(100)
	.get();

```