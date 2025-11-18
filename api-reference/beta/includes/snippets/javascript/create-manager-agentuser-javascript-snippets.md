---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directoryObject = {
  '@odata.type': '#microsoft.graph.directoryObject'
};

await client.api('/users/{usersId}/manager/$ref')
	.version('beta')
	.post(directoryObject);

```