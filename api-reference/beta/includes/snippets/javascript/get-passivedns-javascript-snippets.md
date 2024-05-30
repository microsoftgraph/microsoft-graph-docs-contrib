---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let passiveDnsRecord = await client.api('/security/threatIntelligence/passiveDnsRecords/Y29udG9zby5jb20kJDIwLjEwMy44NS4zMyQkZmFsc2U=')
	.version('beta')
	.get();

```