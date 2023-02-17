---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CheckinPostRequestBody();
$requestBody->setComment('Updating the latest guidelines');



$graphServiceClient->drivesById('drive-id')->itemsById('driveItem-id')->checkin()->post($requestBody);


```