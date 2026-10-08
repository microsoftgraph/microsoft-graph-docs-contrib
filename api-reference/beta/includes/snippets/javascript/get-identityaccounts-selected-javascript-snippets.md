---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let identityAccounts = await client.api('/security/identities/identityAccounts/0104216-0539-4838-88b1-55baafdc296b')
	.version('beta')
	.select('accounts')
	.get();

```