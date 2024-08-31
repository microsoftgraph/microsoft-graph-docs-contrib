---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let approvalItemRequest = await client.api('/solutions/approval/approvalItems/7d096f68-c4fe-4967-99dc-df0248c33a77/requests/817d2849-c546-47f0-9c38-1a1a38ac6648')
	.version('beta')
	.get();

```