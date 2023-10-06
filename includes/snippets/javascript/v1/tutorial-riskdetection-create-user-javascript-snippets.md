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
  displayName: 'MyTestUser1',
  mailNickname: 'MyTestUser1',
  userPrincipalName: 'MyTestUser1@contoso.com',
  passwordProfile: {
    forceChangePasswordNextSignIn: true,
    password: 'Contoso1234'
  }
};

await client.api('/users')
	.post(user);

```