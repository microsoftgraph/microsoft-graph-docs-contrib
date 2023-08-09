---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let resourceRoles = await client.api('/identityGovernance/entitlementManagement/catalogs/15d889df-3eb8-4e9b-bfb4-b1908849aec4/resourceRoles')
	.filter('(originSystem eq \'AadGroup\' and resource/id eq \'a35bef72-a8aa-4ca3-af30-f6b2ece7208f\')')
	.expand('resource/id eq \'a35bef72-a8aa-4ca3-af30-f6b2ece7208f\')')
	.get();

```