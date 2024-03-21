---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const subscription = {
  changeType: 'created,updated,deleted',
  notificationUrl: 'https://webhook.azurewebsites.net/api/send/myNotifyClient',
  resource: '/users/87d349ed-44d7-43e1-9a83-5f2406dee5bd/chats/getAllMessages?model=B',
  expirationDateTime: '2023-01-10T18:56:49.112603+00:00',
  clientState: 'ClientSecret',
  includeResourceData: true,
  encryptionCertificate: 'MMMM/sMMMsssMsMMMsMMsMMMs4sMMsM4ssMsMsMMMss4ssMMMssss...s4sMMMMsM444ssM4MMsssMMMMsM4MMM4sMsM4MMsM44MMM4ssss4Ms4sMM4MMMMM4MMs+ss4MsMssMss4s==',
  encryptionCertificateId: '44M4444M4444M4M44MM4444MM4444MMMM44MM4M4'
};

await client.api('/subscriptions')
	.post(subscription);

```