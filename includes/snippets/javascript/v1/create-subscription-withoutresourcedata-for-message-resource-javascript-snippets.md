---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const subscription = {
    changeType: 'created',
    notificationUrl: 'https://webhook.azurewebsites.net/api/send/myNotifyClient',
    resource: 'users/622eaaff-0683-4862-9de4-f2ec83c2bd98/messages',
    expirationDateTime: '2021-07-07T21:42:18.2257768+00:00',
    clientState: 'secretClientState'
};

await client.api('/subscriptions')
	.post(subscription);

```