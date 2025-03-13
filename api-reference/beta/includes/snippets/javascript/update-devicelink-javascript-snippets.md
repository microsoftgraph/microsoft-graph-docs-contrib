---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceLink = {
    name: 'Backup Link'
};

await client.api('/networkAccess/connectivity/branches/{branchSiteId}/deviceLinks/{deviceLinkId}')
	.version('beta')
	.update(deviceLink);

```