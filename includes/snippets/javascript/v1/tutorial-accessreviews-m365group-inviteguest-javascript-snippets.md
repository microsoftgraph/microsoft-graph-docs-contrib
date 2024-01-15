---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const invitation = {
    invitedUserDisplayName: 'John Doe (Tailspin Toys)',
    invitedUserEmailAddress: 'john@tailspintoys.com',
    sendInvitationMessage: false,
    inviteRedirectUrl: 'https://myapps.microsoft.com'
};

await client.api('/invitations')
	.post(invitation);

```