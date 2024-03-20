---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let contentStream = await client.api('/drives/b!fMInbiL5dkK51VbATG0ddrCg6AJpEj9Lm4uGj5HgEi4guyuYp4W5SbH4dPfXTbCF/items/014Y52UITTNSVUQI43PZBJMKLAY6LJBUVE/contentStream')
	.version('beta')
	.header('Range','bytes=0-1023')
	.get();

```