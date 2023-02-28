---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let webPartPosition = await client.api('/sites/{sitesId}/pages/{sitePageId}/webParts/{webPartId}/getPositionOfWebPart')
	.version('beta')
	.get();

```