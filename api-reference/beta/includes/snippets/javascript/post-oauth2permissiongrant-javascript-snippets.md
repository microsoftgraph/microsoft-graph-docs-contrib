---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const oAuth2PermissionGrant = {
    clientId: 'ef969797-201d-4f6b-960c-e9ed5f31dab5',
    consentType: 'AllPrincipals',
    resourceId: '943603e4-e787-4fe9-93d1-e30f749aae39',
    scope: 'DelegatedPermissionGrant.ReadWrite.All',
    startTime: '2022-03-17T00:00:00Z',
    expiryTime: '2023-03-17T00:00:00Z'
};

await client.api('/oauth2PermissionGrants')
	.version('beta')
	.post(oAuth2PermissionGrant);

```