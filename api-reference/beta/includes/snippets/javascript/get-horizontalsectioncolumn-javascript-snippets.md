---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let horizontalSectionColumn = await client.api('/sites/{sitesId}/pages/{sitePageId}/canvasLayout/horizontalSections/{horizontalSectionId}/columns/{horizontalSectionColumnId}?select=id,expand=webparts')
	.version('beta')
	.get();

```