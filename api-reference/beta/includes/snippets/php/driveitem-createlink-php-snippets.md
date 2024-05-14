---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CreateLinkPostRequestBody;
use Microsoft\Graph\Generated\Models\DriveRecipient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CreateLinkPostRequestBody();
$requestBody->setType('view');
$requestBody->setScope('anonymous');
$requestBody->setPassword('String');
$recipientsDriveRecipient1 = new DriveRecipient();
$recipientsDriveRecipient1->setOdataType('microsoft.graph.driveRecipient');
$recipientsArray []= $recipientsDriveRecipient1;
$requestBody->setRecipients($recipientsArray);

$requestBody->setSendNotification(true);
$requestBody->setRetainInheritedPermissions(false);

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->createLink()->post($requestBody)->wait();

```