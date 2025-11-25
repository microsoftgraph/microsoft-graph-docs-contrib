---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcSnapshot = await client.api('/deviceManagement/virtualEndpoint/snapshots/retrieveSnapshotImportResult(snapshotId='7e8c3054-bda1-4e37-81c5-7d1b080a8849')')
	.version('beta')
	.get();

```