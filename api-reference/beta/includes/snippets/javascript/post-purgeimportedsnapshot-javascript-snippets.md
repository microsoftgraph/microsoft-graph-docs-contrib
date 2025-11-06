---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const purgeImportedSnapshot = {
  snapshotIds: [
    '7e8c3054-bda1-4e37-81c5-7d1b080a8849',
    '715c8075-6892-42f3-9550-40b4b48e13d2'
  ]
};

await client.api('/deviceManagement/virtualEndpoint/snapshots/purgeImportedSnapshot')
	.version('beta')
	.post(purgeImportedSnapshot);

```