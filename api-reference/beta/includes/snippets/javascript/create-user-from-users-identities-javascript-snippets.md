---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const user = {
  displayName: 'John Smith',
  identities: [
    {
      signInType: 'userName',
      issuer: 'contoso.com',
      issuerAssignedId: 'johnsmith'
    },
    {
      signInType: 'emailAddress',
      issuer: 'contoso.com',
      issuerAssignedId: 'jsmith@yahoo.com'
    },
    {
      signInType: 'federated',
      issuer: 'facebook.com',
      issuerAssignedId: '5eecb0cd'
    }
  ],
  passwordProfile: {
    password: 'password-value',
    forceChangePasswordNextSignIn: false
  },
  passwordPolicies: 'DisablePasswordExpiration'
};

await client.api('/users')
	.version('beta')
	.post(user);

```