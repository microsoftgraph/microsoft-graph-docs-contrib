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
	.filter('appId eq \'f4d9654f-0305-4072-878c-8bf266dfe146\'')
	.get();

```