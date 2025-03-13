---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Sites\Item\Lists\Item\Items\Item\CreateLink\CreateLinkPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\DriveRecipient;


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

$result = $graphServiceClient->sites()->bySiteId('site-id')->lists()->byListId('list-id')->items()->byListItemId('listItem-id')->createLink()->post($requestBody)->wait();

```