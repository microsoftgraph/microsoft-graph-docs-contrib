---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let notebook = await client.api('/me/onenote/notebooks/1-e13f257d-78c6-46cf-ae8c-13686517ac5f')
	.get();

```