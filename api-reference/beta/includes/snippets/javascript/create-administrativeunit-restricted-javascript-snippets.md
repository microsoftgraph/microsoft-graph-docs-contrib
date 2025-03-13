---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const administrativeUnit = {
    displayName: 'Executive Division',
    description: 'Executive division administration',
    isMemberManagementRestricted: true
};

await client.api('/administrativeUnits')
	.version('beta')
	.post(administrativeUnit);

```