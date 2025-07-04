---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let copilotAdminLimitedMode = await client.api('/copilot/admin/settings/limitedMode')
	.version('beta')
	.get();

```