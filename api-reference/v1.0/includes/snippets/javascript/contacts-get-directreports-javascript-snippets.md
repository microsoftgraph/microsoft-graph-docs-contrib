---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let directReports = await client.api('/contacts/e63333f5-3d11-4026-8fe3-c0f7b044dd3a/directReports')
	.get();

```