---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let numberAssignments = await client.api('/admin/teams/telephoneNumberManagement/numberAssignments')
	.filter('telephoneNumber eq \' 12052582895\'')
	.get();

```