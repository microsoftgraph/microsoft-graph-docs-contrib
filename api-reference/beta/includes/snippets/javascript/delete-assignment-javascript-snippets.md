---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/admin/cloudLicensing/assignments/0b1a424d-3b9b-4446-80b9-6917dd521e03')
	.version('beta')
	.delete();

```