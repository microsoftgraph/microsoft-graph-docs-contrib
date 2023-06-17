---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let appRoles = await client.api('/servicePrincipals/a8cac399-cde5-4516-a674-819503c61313/appRoles')
	.version('beta')
	.get();

```