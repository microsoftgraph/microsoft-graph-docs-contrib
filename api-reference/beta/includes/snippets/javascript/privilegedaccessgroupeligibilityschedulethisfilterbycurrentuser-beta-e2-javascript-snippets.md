---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let filterByCurrentUser = await client.api('/identityGovernance/privilegedAccess/group/eligibilitySchedules/filterByCurrentUser(on='principal')')
	.version('beta')
	.filter('groupId eq \'d5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc\' and accessId eq \'member\'')
	.get();

```