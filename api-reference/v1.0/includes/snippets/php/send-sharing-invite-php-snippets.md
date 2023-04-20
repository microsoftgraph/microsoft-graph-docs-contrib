---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new InvitePostRequestBody();
$recipientsDriveRecipient1 = new DriveRecipient();
$recipientsDriveRecipient1->setEmail('ryan@contoso.com');


$recipientsArray []= $recipientsDriveRecipient1;
$requestBody->setRecipients($recipientsArray);


$requestBody->setMessage('Here\'s the file that we\'re collaborating on.');

$requestBody->setRequireSignIn(true);

$requestBody->setSendInvitation(true);

$requestBody->setRoles(['write', ]);

$requestBody->setPassword('password123');

$requestBody->setExpirationDateTime('2018-07-15T14:00:00.000Z');



$result = $graphServiceClient->drivesById('drive-id')->itemsById('driveItem-id')->invite()->post($requestBody);


```