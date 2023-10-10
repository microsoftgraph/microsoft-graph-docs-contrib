---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let managedEBooks = await client.api('/deviceAppManagement/managedEBooks')
	.get();

```