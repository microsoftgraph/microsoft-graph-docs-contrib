---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let assignmentError = await client.api('/admin/cloudLicensing/assignmentErrors/115bedd6-40d2-45c1-9220-a73c2a8f6226')
	.version('beta')
	.get();

```