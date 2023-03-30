---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const restore = {
    cloudPcSnapshotId: 'A00009UV000_93aff428-61f2-467f-a879-1102af6fd4a8'
};

await client.api('/deviceManagement/virtualEndpoint/cloudPCs/4b5ad5e0-6a0b-4ffc-818d-36bb23cf4dbd/restore')
	.version('beta')
	.post(restore);

```