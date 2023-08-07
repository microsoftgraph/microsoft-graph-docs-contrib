---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const subscription = {
  changeType: 'created,updated',
  notificationUrl: 'https://webhook.azurewebsites.net/notificationClient',
  lifecycleNotificationUrl: 'https://webhook.azurewebsites.net/api/lifecycleNotifications',
  resource: '/me/mailfolders(\'inbox\')/messages',
  expirationDateTime: '2016-03-20T11:00:00.0000000Z',
  clientState: 'SecretClientState'
};

await client.api('/subscriptions')
	.post(subscription);

```