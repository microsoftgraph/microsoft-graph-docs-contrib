---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let resourceRoles = await client.api('/identityGovernance/entitlementManagement/catalogs/29db1374-74cc-485d-b21e-506e08b836a5/resourceRoles')
	.filter('(originSystem eq \'SharePointOnline\' and resource/id eq \'dcc3f966-a73c-48e2-8c1d-bcac775488c3\')')
	.expand('resource/id eq \'dcc3f966-a73c-48e2-8c1d-bcac775488c3\')')
	.get();

```