---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DriveItem();
$requestBody->setName('Shared legal agreements');



$graphServiceClient->drive()->itemsById('driveItem-id')->patch($requestBody);


```