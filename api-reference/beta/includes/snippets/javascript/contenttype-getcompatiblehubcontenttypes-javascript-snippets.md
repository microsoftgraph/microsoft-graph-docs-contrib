---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getCompatibleHubContentTypes = await client.api('/sites/{siteId}/lists/{listId}/contentTypes/getCompatibleHubContentTypes')
	.version('beta')
	.get();

```