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
  displayName: 'Requestor1',
  mailNickname: 'Requestor1',
  userPrincipalName: 'Requestor1@contoso.onmicrosoft.com',
  passwordProfile: {
    forceChangePasswordNextSignIn: true,
    password: 'Contoso1234'
  }
};

await client.api('/users')
	.post(user);

```