---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let userRegistrationFeatureSummary = await client.api('/reports/authenticationMethods/usersRegisteredByFeature(includedUserTypes='all',includedUserRoles='all')')
	.get();

```