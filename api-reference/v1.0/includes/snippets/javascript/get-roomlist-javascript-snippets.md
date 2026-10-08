---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roomList = await client.api('/places/dc404124-302a-92aa-f98d-7b4deb0c1705/microsoft.graph.roomList')
	.get();

```