---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let assignments = await client.api('/education/users/f3a5344e-dbde-48b0-be24-b5b62a243836/assignments')
	.get();

```