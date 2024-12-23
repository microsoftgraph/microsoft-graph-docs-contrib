---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let siteRestoreArtifactsBulkAdditionRequest = await client.api('/solutions/backupRestore/sharePointRestoreSessions/89ca51b1-b0a5-4555-a8f3-ad95afcf867d/siteRestoreArtifactsBulkAdditionRequests/b246ac99-4184-48ed-b7ff-9c2a7af69757')
	.version('beta')
	.get();

```