---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const invitation = {
  invitedUserEmailAddress: 'admin@fabrikam.com',
  inviteRedirectUrl: 'https://myapp.contoso.com'
};

await client.api('/invitations')
	.version('beta')
	.post(invitation);

```