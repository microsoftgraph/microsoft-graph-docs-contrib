---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const user = {
    displayName: 'Test User',
    identities: [
        {
            signInType: 'emailAddress',
            issuer: 'contoso.onmicrosoft.com',
            issuerAssignedId: 'adelev@adatum.com'
        }
    ],
    mail: 'adelev@adatum.com',
    passwordProfile: {
        password: 'passwordValue',
        forceChangePasswordNextSignIn: true
    },
    passwordPolicies: 'DisablePasswordExpiration'
};

await client.api('/users')
	.post(user);

```