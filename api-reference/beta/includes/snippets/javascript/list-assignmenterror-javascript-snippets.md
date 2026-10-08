---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let assignmentErrors = await client.api('/admin/cloudLicensing/assignmentErrors')
	.version('beta')
	.get();

```