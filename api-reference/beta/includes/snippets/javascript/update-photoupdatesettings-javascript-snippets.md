---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const photoUpdateSettings = {
    source: 'cloud',
    allowedRoles: []
};

await client.api('/admin/people/photoUpdateSettings')
	.version('beta')
	.update(photoUpdateSettings);

```