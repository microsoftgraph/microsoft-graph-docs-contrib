---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deviceCategories = await client.api('/deviceManagement/deviceCategories')
	.get();

```