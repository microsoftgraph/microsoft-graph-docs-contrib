---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let granularSiteRestoreArtifacts = await client.api('/solutions/backupRestore/sharePointRestoreSessions/01b9d504-a6a4-464b-b2e1-0085d9fab651/granularSiteRestoreArtifacts')
	.get();

```