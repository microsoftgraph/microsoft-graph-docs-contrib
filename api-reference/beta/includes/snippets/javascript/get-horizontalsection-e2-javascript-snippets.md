---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let horizontalSection = await client.api('/sites/{sitesId}/pages/{sitePageId}/canvasLayout/horizontalSections/{horizontalSectionId}?select=id,expand=columns')
	.version('beta')
	.get();

```