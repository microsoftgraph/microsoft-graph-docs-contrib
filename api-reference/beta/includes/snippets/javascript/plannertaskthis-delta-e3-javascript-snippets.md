---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let delta = await client.api('/planner/tasks/delta')
	.version('beta')
	.filter('planId eq \'-W4K7hIak0WlAwgJCn1sEWQABgjH\'')
	.select('percentComplete,assignments,creationSource')
	.get();

```