---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Subscription();
$requestBody->setChangeType('created,updated,deleted');

$requestBody->setNotificationUrl('https://webhook.azurewebsites.net/api/send/myNotifyClient');

$requestBody->setResource('/users/87d349ed-44d7-43e1-9a83-5f2406dee5bd/chats/getAllMessages?model=B');

$requestBody->setExpirationDateTime(new DateTime('2023-01-10T18:56:49.112603+00:00'));

$requestBody->setClientState('ClientSecret');

$requestBody->setIncludeResourceData(true);

$requestBody->setEncryptionCertificate('MMMM/sMMMsssMsMMMsMMsMMMs4sMMsM4ssMsMsMMMss4ssMMMssss...s4sMMMMsM444ssM4MMsssMMMMsM4MMM4sMsM4MMsM44MMM4ssss4Ms4sMM4MMMMM4MMs+ss4MsMssMss4s==');

$requestBody->setEncryptionCertificateId('44M4444M4444M4M44MM4444MM4444MMMM44MM4M4');



$result = $graphServiceClient->subscriptions()->post($requestBody);


```