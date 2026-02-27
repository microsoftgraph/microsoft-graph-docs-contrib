---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const invokeActionResult = {
  accountId: '256db173-930a-4991-9061-0d51a9a93ba5',
  action: 'disable',
  identityProvider: 'activeDirectory'
};

await client.api('/security/identities/identityAccounts/0104216-0539-4838-88b1-55baafdc296b/invokeAction')
	.version('beta')
	.post(invokeActionResult);

```