---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let delta = await client.api('/planner/plans/-W4K7hIak0WlAwgJCn1sEWQABgjH/buckets/delta')
	.version('beta')
	.get();

```