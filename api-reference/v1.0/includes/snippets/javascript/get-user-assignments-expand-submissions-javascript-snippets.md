---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let assignments = await client.api('/education/users/80cefd93-8d88-40e2-b5d3-67898383e226/assignments?expand=submissions')
	.get();

```