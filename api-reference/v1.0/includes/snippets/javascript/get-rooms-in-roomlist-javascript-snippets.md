---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let rooms = await client.api('/places/Building2Rooms@contoso.com/microsoft.graph.roomlist/rooms')
	.get();

```