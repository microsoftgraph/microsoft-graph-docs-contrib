---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let webPart = await client.api('/sites/{sitesId}/pages/{sitePageId}/webParts/{webPartId}?select=id')
	.version('beta')
	.get();

```