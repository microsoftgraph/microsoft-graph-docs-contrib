---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let instances = await client.api('/me/settings/windows/{windowsSettingId}/instances')
	.version('beta')
	.get();

```