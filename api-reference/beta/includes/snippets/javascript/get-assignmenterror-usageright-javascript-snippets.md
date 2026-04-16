---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let usageRight = await client.api('/admin/cloudLicensing/assignmentErrors/405ee855-dd74-f695-8d7e-be35a6788fe8/usageRight')
	.version('beta')
	.get();

```