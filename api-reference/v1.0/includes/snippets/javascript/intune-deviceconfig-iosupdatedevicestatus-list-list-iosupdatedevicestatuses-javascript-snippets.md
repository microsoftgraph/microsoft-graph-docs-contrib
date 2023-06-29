---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let iosUpdateStatuses = await client.api('/deviceManagement/iosUpdateStatuses')
	.get();

```