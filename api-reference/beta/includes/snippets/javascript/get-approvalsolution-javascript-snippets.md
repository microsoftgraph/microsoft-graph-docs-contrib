---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let approvalSolution = await client.api('/solutions/approval')
	.version('beta')
	.get();

```