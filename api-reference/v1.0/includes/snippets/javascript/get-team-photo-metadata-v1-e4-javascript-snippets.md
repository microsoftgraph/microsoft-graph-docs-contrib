---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let profilePhoto = await client.api('/teams/172b0cce-e65d-44ce-9a49-91d9f2e8491e/photo')
	.get();

```