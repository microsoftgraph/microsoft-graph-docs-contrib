---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new OutlookTaskGroup();
$requestBody->setName('Personal Tasks');



$result = $graphServiceClient->me()->outlook()->taskGroupsById('outlookTaskGroup-id')->patch($requestBody);


```