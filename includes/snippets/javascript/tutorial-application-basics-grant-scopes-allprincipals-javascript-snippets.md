---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const oAuth2PermissionGrant = {
    clientId: 'b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94',
    consentType: 'AllPrincipal',
    resourceId: '7ea9e944-71ce-443d-811c-71e8047b557a',
    scope: 'User.Read.All Group.Read.All'
};

await client.api('/oauth2PermissionGrants')
	.post(oAuth2PermissionGrant);

```