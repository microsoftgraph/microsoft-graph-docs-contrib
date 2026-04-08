---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/admin/windows/updates/policies/45a01ef3-fb4b-8c1d-2428-1f060464033c/rings/86364b9d-d04a-46f3-b2ee-7ef4157ab6fc')
	.version('beta')
	.delete();

```