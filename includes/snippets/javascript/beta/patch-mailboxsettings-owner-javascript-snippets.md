---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mailboxSettings = {
  delegateMeetingMessageDeliveryOptions: 'sendToDelegateAndPrincipal'
};

await client.api('/users/AlexW@contoso.com/mailboxsettings')
	.version('beta')
	.update(mailboxSettings);

```