---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let mailboxRestoreArtifactsBulkAdditionRequest = await client.api('/solutions/backupRestore/exchangeRestoreSessions/dc3a3fc8-eb4b-45eb-9ca6-4955696344b8/mailboxRestoreArtifactsBulkAdditionRequests/b4318e3a-3eae-4ce5-87f3-bad51e1527c4')
	.version('beta')
	.get();

```