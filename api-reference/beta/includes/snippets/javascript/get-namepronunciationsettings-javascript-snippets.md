---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let namePronunciationSettings = await client.api('/admin/people/namePronunciation')
	.version('beta')
	.get();

```