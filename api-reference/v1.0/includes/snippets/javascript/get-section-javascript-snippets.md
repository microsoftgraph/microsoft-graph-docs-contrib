---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let onenoteSection = await client.api('/me/onenote/sections/1-0bc35248-e4e2-4759-ad85-89407bceccfe')
	.get();

```