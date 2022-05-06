---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const addLargeGalleryViewOperation = {
  clientContext: '785f4929-92ca-497b-863f-c778c77c9758'
};

await client.api('/communications/calls/57dab8b1-894c-409a-b240-bd8beae78896/addLargeGalleryView')
	.version('beta')
	.post(addLargeGalleryViewOperation);

```