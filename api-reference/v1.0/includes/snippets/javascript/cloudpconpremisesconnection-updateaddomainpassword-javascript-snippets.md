---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const updateAdDomainPassword = {
  adDomainPassword: 'AdDomainPassword_XXXX'
};

await client.api('/deviceManagement/virtualEndpoint/onPremisesConnections/07f12770-a225-4957-9127-0d247cf4ffff/updateAdDomainPassword')
	.post(updateAdDomainPassword);

```