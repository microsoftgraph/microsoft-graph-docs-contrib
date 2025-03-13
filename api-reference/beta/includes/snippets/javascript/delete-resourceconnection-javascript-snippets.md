---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/admin/windows/updates/resourceConnections/85fbecb2-e407-34e9-9298-4d587857795d')
	.version('beta')
	.delete();

```