---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let int32 = await client.api('/users/{usersId}/transitiveReports/$count')
	.version('beta')
	.get();

```