---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/admin/windows/updates/policies/7650b117-e3fc-424a-ae94-988104652bdd')
	.version('beta')
	.delete();

```