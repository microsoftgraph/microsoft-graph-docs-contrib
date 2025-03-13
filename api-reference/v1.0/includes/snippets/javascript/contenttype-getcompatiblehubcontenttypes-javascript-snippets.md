---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getCompatibleHubContentTypes = await client.api('/sites/root/lists/Documents/contentTypes/getCompatibleHubContentTypes')
	.get();

```