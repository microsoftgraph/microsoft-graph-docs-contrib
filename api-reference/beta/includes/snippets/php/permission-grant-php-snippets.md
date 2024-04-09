---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\GrantPostRequestBody;
use Microsoft\Graph\Generated\Models\DriveRecipient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GrantPostRequestBody();
$recipientsDriveRecipient1 = new DriveRecipient();
$recipientsDriveRecipient1->setEmail('john@contoso.com');
$recipientsArray []= $recipientsDriveRecipient1;
$recipientsDriveRecipient2 = new DriveRecipient();
$recipientsDriveRecipient2->setEmail('ryan@external.com');
$recipientsArray []= $recipientsDriveRecipient2;
$requestBody->setRecipients($recipientsArray);

$requestBody->setRoles(['read', ]);

$result = $graphServiceClient->shares()->bySharedDriveItemId('sharedDriveItem-id')->permission()->grant()->post($requestBody)->wait();

```