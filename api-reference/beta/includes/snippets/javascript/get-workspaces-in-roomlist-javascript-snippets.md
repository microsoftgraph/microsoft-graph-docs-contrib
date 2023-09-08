---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let workspaces = await client.api('/places/bldg2@contoso.com/microsoft.graph.roomlist/workspaces')
	.version('beta')
	.get();

```