---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let updatePolicy = await client.api('/admin/windows/updates/updatePolicies/a7aa99c1-34a2-850c-5223-7816fde70713')
	.version('beta')
	.get();

```