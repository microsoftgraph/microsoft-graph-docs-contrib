---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let driveRestoreArtifactsBulkAdditionRequest = await client.api('/solutions/backupRestore/oneDriveForBusinessRestoreSessions/493635f0-b8c0-4c7f-bcb7-b20c85d97efe/driveRestoreArtifactsBulkAdditionRequests/e79d0a79-7210-4369-9177-6297f0555242')
	.version('beta')
	.get();

```