---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const uxSetting = {
  restrictNonAdminAccess: 'true'
};

await client.api('/admin/entra/uxSetting')
	.version('beta')
	.update(uxSetting);

```