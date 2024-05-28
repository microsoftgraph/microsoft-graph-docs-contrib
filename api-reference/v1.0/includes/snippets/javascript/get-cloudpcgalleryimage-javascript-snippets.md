---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcGalleryImage = await client.api('/deviceManagement/virtualEndpoint/galleryImages/MicrosoftWindowsDesktop_windows-ent-cpc_19h2-ent-cpc-os')
	.get();

```