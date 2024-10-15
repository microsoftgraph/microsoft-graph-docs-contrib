---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let approvalItems = await client.api('/solutions/approval/approvalItems')
	.version('beta')
	.get();

```