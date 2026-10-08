---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let owners = await client.api('/serviceprincipals/bbec3106-565f-4907-941e-96b4dbfef21c/owners')
	.get();

```