---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let windowsSetting = await client.api('/me/settings/windows/{windowsSettingId}')
	.get();

```