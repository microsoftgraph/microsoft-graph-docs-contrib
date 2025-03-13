---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let oauth2PermissionGrants = await client.api('/oauth2PermissionGrants')
	.filter('clientId eq \'b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94\' and principalId eq \'3fbd929d-8c56-4462-851e-0eb9a7b3a2a5\' and consentType eq \'Principal\'')
	.get();

```