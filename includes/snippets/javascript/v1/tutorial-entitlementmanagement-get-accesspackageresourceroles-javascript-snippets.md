---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let resourceRoles = await client.api('/identityGovernance/entitlementManagement/catalogs/ede67938-cda7-4127-a9ca-7c7bf86a19b7/resourceRoles')
	.filter('(originSystem eq \'AadGroup\' and displayName eq \'Member\' and resource/id eq \'274a1e21c5-8a76-4578-acb1-641160e076e\')')
	.expand('resource/id eq \'274a1e21c5-8a76-4578-acb1-641160e076e\')')
	.get();

```