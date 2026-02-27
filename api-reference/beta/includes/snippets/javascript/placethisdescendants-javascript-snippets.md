---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let desk = await client.api('/places/ca163ae1-14a3-4e2a-8a97-5f82d672186f/descendants/microsoft.graph.desk')
	.version('beta')
	.get();

```