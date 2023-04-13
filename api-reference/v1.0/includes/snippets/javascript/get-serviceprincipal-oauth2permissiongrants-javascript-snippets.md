---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let oauth2PermissionGrants = await client.api('/servicePrincipals/00063ffc-54e9-405d-b8f3-56124728e051/oauth2PermissionGrants')
	.get();

```