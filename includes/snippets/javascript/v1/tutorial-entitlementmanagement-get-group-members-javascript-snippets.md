---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let members = await client.api('/groups/e93e24d1-2b65-4a6c-a1dd-654a12225487/members')
	.get();

```