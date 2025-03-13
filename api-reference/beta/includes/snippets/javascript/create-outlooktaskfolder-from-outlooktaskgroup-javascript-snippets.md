---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const outlookTaskFolder = {
  name: 'Cooking'
};

await client.api('/me/outlook/taskGroups/AAMkADIyAAAhrbe-AAA=/taskFolders')
	.version('beta')
	.post(outlookTaskFolder);

```