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
    displayName: 'Aline Dupuy',
    mailNickname: 'AlineD',
    userPrincipalName: 'AlineD@Contoso.com',
    passwordProfile: {
        forceChangePasswordNextSignIn: true,
        password: 'xWwvJ]6NMw+bWH-d'
    }
};

await client.api('/users')
	.post(user);

```