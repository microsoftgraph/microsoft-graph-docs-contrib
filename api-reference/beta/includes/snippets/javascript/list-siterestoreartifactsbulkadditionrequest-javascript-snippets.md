---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let siteRestoreArtifactsBulkAdditionRequests = await client.api('/solutions/backupRestore/sharePointRestoreSessions/959ba739-70b5-43c4-8c90-b2c22014f18b/siteRestoreArtifactsBulkAdditionRequests')
	.version('beta')
	.get();

```