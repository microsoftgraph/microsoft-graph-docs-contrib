---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let approvalItem = await client.api('/solutions/approval/approvalItems/d3a7405e-452a-47e0-9c35-9335225ba55d')
	.version('beta')
	.get();

```