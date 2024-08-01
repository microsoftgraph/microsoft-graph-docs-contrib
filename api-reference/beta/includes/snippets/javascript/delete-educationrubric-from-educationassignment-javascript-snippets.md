---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/education/classes/f1e03281-acd7-4fb0-84c3-902b3d30104c/assignments/0b30b986-7457-45e2-b87a-53df3ac7657d/rubric/$ref')
	.version('beta')
	.delete();

```