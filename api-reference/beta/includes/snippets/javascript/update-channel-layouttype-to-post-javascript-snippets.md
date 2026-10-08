---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const channel = {
  layoutType: 'post'
};

await client.api('/teams/893075dd-2487-4122-925f-022c42e20265/channels/19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2')
	.version('beta')
	.update(channel);

```