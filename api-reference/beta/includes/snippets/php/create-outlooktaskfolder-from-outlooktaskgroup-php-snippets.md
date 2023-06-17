---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new OutlookTaskFolder();
$requestBody->setName('Cooking');



$result = $graphServiceClient->me()->outlook()->taskGroups()->byTaskGroupId('outlookTaskGroup-id')->taskFolders()->post($requestBody);


```