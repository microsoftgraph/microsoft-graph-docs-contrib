---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\InvitePostRequestBody;
use Microsoft\Graph\Generated\Models\DriveRecipient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new InvitePostRequestBody();
$recipientsDriveRecipient1 = new DriveRecipient();
$recipientsDriveRecipient1->setEmail('robin@contoso.org');
$recipientsArray []= $recipientsDriveRecipient1;
$requestBody->setRecipients($recipientsArray);

$requestBody->setMessage('Here\'s the file that we\'re collaborating on.');
$requestBody->setRequireSignIn(true);
$requestBody->setSendInvitation(true);
$requestBody->setRoles(['write', ]);
$requestBody->setPassword('password123');
$requestBody->setExpirationDateTime('2018-07-15T14:00:00.000Z');

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->invite()->post($requestBody)->wait();

```