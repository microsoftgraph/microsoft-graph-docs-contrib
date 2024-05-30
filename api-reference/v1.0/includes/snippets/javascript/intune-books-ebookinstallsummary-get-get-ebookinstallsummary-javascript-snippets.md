---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let eBookInstallSummary = await client.api('/deviceAppManagement/managedEBooks/{managedEBookId}/installSummary')
	.get();

```