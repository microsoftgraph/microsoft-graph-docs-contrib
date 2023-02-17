---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let appRoleAssignments = await client.api('/users/6e7b768e-07e2-4810-8459-485f84f8f204/appRoleAssignments')
	.get();

```