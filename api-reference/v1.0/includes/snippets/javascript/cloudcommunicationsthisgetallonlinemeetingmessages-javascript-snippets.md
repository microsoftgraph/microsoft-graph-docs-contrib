---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getAllOnlineMeetingMessages = await client.api('/communications/getAllOnlineMeetingMessages')
	.expand('conversation')
	.get();

```