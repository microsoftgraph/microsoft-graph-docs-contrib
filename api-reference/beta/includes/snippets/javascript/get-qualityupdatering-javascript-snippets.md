---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let ring = await client.api('/admin/windows/updates/policies/a7aa99c1-34a2-850c-5223-7816fde70713/rings/a2c7637a-cda5-e59e-2385-972c4ee528d2')
	.version('beta')
	.get();

```