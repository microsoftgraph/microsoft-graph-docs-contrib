---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new LinkedResource_v2();
$requestBody->setWebUrl('https://microsoft.com');

$requestBody->setApplicationName('Microsoft');

$requestBody->setDisplayName('Microsoft');

$requestBody->setExternalId('dk9cddce2-dce2-f9dd-e2dc-cdf9e2dccdf9');



$requestResult = $graphServiceClient->me()->tasks()->listsById('baseTaskList-id')->tasksById('baseTask-id')->linkedResources()->post($requestBody);


```