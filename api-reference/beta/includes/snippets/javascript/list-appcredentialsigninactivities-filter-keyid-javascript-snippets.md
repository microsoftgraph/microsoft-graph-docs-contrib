---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let appCredentialSignInActivities = await client.api('/reports/appCredentialSignInActivities')
	.version('beta')
	.filter('keyId eq \'83f45296-fb8f-4aaa-a399-ac51084e02b7\'')
	.get();

```