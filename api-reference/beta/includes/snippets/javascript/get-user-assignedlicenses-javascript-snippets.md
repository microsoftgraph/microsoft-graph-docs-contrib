---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let users = await client.api('/users')
	.version('beta')
	.filter('assignedLicenses/any(u:u/skuId eq cbdc14ab-d96c-4c30-b9f4-6ada7cdc1d46)')
	.select('id,mail,assignedLicenses')
	.get();

```