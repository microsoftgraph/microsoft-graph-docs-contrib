---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CreateLinkPostRequestBody();
$requestBody->setType('view');

$requestBody->setScope('anonymous');

$requestBody->setPassword('String');

$recipientsDriveRecipient1 = new DriveRecipient();
$recipientsDriveRecipient1->set@odatatype('microsoft.graph.driveRecipient');


$recipientsArray []= $recipientsDriveRecipient1;
$requestBody->setRecipients($recipientsArray);


$requestBody->setSendNotification(true);

$requestBody->setRetainInheritedPermissions(false);



$result = $graphServiceClient->drivesById('drive-id')->itemsById('driveItem-id')->createLink()->post($requestBody);


```