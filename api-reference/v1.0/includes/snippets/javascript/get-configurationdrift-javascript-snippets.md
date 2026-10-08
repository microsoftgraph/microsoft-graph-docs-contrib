---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let configurationDrift = await client.api('/admin/configurationManagement/configurationDrifts/4e808e99-7f60-4194-8294-02ede71effd8')
	.get();

```