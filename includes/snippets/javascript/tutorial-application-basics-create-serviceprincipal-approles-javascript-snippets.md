---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const servicePrincipal = {
    appRoles: [
        {
            allowedMemberTypes: [
                'User'
            ],
            description: 'Survey.ReadWrite.All',
            displayName: 'Survey.ReadWrite.All',
            id: '3ce57053-0ebf-42d8-bf7c-74161a450e4b',
            isEnabled: true,
            value: 'Survey.ReadWrite.All'
        },
        {
            allowedMemberTypes: [
                'User',
                'Application'
            ],
            description: 'Survey.Read',
            displayName: 'Survey.Read',
            id: '7a9ddfc4-cc8a-48ea-8275-8ecbffffd5a0',
            isEnabled: false,
            origin: 'Application',
            value: 'Survey.Read'
        }
    ]
};

await client.api('/servicePrincipals/2a8f9e7a-af01-413a-9592-c32ec0e5c1a7')
	.version('beta')
	.update(servicePrincipal);

```