---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sitePage = await client.api('/sites/{sitesId}/pages/{sitePageId}?select=id,title&expand=webparts')
	.version('beta')
	.get();

```