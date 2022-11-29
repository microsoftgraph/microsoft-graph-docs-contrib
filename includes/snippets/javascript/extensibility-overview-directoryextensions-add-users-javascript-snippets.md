---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const user = {
    accountEnabled: true,
    displayName: 'Adele Vance',
    mailNickname: 'AdeleV',
    userPrincipalName: 'AdeleV@contoso.com',
    passwordProfile: {
        forceChangePasswordNextSignIn: false,
        password: 'xWwvJ]6NMw+bWH-d'
    },
    extension_b7d8e648520f41d3b9c0fdeb91768a0a_jobGroupTracker: 'JobGroupN'
};

await client.api('/users')
	.post(user);

```