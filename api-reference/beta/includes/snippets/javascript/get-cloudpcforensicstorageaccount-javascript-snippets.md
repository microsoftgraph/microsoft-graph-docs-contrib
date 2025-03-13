---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getStorageAccounts = await client.api('/deviceManagement/virtualEndpoint/snapshots/getStorageAccounts(subscriptionId='cb6ad4c4-8a17-4245-a644-e4436b1ee204')')
	.version('beta')
	.get();

```