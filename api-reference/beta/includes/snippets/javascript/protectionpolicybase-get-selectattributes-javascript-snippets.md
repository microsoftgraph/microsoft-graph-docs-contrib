---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let protectionPolicyBase = await client.api('/solutions/backupRestore/ProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e')
	.version('beta')
	.header('Authorization','Bearer <Access-Token>')
	.select('id,displayName,status,protectionPolicyArtifactCount')
	.get();

```