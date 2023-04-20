---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DriveItem();
$requestBody->setName('New Folder');

$folder = new Folder();

$requestBody->setFolder($folder);
$additionalData = [
		'@microsoft.graph.conflictBehavior' => 'rename', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->drivesById('drive-id')->itemsById('driveItem-id')->children()->post($requestBody);


```