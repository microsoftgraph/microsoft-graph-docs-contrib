---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let approvalOperation = await client.api('/solutions/approval/operations/1c281a99-f105-4f88-86fa-52d797323908')
	.version('beta')
	.get();

```