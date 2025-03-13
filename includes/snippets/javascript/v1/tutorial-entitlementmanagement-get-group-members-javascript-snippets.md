---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let members = await client.api('/groups/f4892fac-e81c-4712-bdf2-a4450008a4b0/members')
	.get();

```