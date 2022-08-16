---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let channel = await client.api('/teams/02bd9fd6-8f93-4758-87c3-1fb73740a315/primaryChannel')
	.get();

```