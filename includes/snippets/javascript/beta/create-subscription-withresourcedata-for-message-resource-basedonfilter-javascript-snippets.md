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
    resource: 'me/mailfolders(\'Drafts\')/messages?$select=Subject,bodyPreview&$filter=hasAttachments eq true AND importance eq \'High\'',
    expirationDateTime: '2022-01-01T21:42:18.2257768+00:00',
    clientState: 'secretClientValue',
    includeResourceData: true,
    encryptionCertificate: 'MIIDMzCCAhugAwIBAgIQE7D+++Dk1hKQBqWA==',
    encryptionCertificateId: 'testCertificateId'
};

await client.api('/subscriptions')
	.version('beta')
	.post(subscription);

```