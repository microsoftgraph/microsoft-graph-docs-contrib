---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let applicableContent = await client.api('/admin/windows/updates/policies/45a01ef3-fb4b-8c1d-2428-1f060464033c/applicableContent')
	.version('beta')
	.get();

```