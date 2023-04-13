---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let galleryImages = await client.api('/deviceManagement/virtualEndpoint/galleryImages')
	.version('beta')
	.get();

```