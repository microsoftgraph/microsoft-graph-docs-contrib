---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/users/{usersId}/contactFolders/{contactFolderId}/permanentDelete')
	.version('beta')
	.post();

```