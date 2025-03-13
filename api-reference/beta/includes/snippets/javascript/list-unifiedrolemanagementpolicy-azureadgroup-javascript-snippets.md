---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleManagementPolicies = await client.api('/policies/roleManagementPolicies')
	.version('beta')
	.filter('scopeId eq \'60bba733-f09d-49b7-8445-32369aa066b3\' and scopeType eq \'Group\'')
	.expand('rules($select=id)')
	.get();

```