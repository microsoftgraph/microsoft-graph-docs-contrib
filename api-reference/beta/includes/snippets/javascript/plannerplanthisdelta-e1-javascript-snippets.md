---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let delta = await client.api('/planner/rosters/-W4K7hIak0WlAwgJCn1sEWQABgjH/plans/delta')
	.version('beta')
	.get();

```