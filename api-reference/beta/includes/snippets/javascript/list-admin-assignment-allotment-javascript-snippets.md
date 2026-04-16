---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let allotments = await client.api('/admin/cloudLicensing/allotments')
	.version('beta')
	.get();

```