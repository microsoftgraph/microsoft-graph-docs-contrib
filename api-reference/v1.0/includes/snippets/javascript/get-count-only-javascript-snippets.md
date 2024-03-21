---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let int32 = await client.api('/groups/02bd9fd6-8f93-4758-87c3-1fb73740a315/members/$count')
	.header('ConsistencyLevel','eventual')
	.get();

```