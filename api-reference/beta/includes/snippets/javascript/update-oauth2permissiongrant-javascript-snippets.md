---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const oAuth2PermissionGrant = {
    scope: 'User.ReadBasic.All Group.ReadWrite.All'
};

await client.api('/oauth2PermissionGrants/l5eW7x0ga0-WDOntXzHateQDNpSH5-lPk9HjD3Sarjk')
	.version('beta')
	.update(oAuth2PermissionGrant);

```