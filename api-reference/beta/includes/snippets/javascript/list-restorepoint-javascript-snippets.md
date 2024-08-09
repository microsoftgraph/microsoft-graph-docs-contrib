---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let restorePoints = await client.api('/solutions/backupRestore/restorePoints')
	.version('beta')
	.filter('protectionDateTime lt 2024-05-12T10:01:00Z')
	.expand('protectionUnit($filter=id eq \'d234cf54-e0fb-49b7-9c8a-5bcd1439e853\')')
	.get();

```