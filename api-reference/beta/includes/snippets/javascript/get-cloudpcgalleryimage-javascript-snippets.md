---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcGalleryImage = await client.api('/deviceManagement/virtualEndpoint/galleryImages/{id}')
	.version('beta')
	.get();

```