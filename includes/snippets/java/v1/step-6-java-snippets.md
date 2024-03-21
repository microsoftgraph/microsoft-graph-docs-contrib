---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Subscription subscription = new Subscription();
subscription.setChangeType("created,updated,deleted");
subscription.setNotificationUrl("https://webhook.azurewebsites.net/api/send/myNotifyClient");
subscription.setResource("/users/87d349ed-44d7-43e1-9a83-5f2406dee5bd/chats/getAllMessages?model=B");
OffsetDateTime expirationDateTime = OffsetDateTime.parse("2023-01-10T18:56:49.112603+00:00");
subscription.setExpirationDateTime(expirationDateTime);
subscription.setClientState("ClientSecret");
subscription.setIncludeResourceData(true);
subscription.setEncryptionCertificate("MMMM/sMMMsssMsMMMsMMsMMMs4sMMsM4ssMsMsMMMss4ssMMMssss...s4sMMMMsM444ssM4MMsssMMMMsM4MMM4sMsM4MMsM44MMM4ssss4Ms4sMM4MMMMM4MMs+ss4MsMssMss4s==");
subscription.setEncryptionCertificateId("44M4444M4444M4M44MM4444MM4444MMMM44MM4M4");
Subscription result = graphClient.subscriptions().post(subscription);


```