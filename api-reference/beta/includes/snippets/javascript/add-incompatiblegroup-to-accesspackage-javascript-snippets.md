---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const group = {
    '@odata.id': 'https://graph.microsoft.com/beta/groups/c0a74b4d-2694-4d5d-a964-1bee4ff0aaf2'
};

await client.api('/identityGovernance/entitlementManagement/accessPackages/{id}/incompatibleGroups/$ref')
	.version('beta')
	.post(group);

```