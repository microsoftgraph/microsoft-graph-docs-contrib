---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new GrantPostRequestBody();
$recipientsDriveRecipient1 = new DriveRecipient();
$recipientsDriveRecipient1->setEmail('john@contoso.com');


$recipientsArray []= $recipientsDriveRecipient1;
$recipientsDriveRecipient2 = new DriveRecipient();
$recipientsDriveRecipient2->setEmail('ryan@external.com');


$recipientsArray []= $recipientsDriveRecipient2;
$requestBody->setRecipients($recipientsArray);


$requestBody->setRoles(['read', ]);



$result = $graphServiceClient->sharesById('sharedDriveItem-id')->permission()->grant()->post($requestBody);


```