---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DriveItem();
$requestBody->setName('My Day at the Beach');

$bundle = new Bundle();
$bundleAlbum = new Album();

$bundle->setAlbum($bundleAlbum);

$requestBody->setBundle($bundle);
$childrenDriveItem1 = new DriveItem();
$childrenDriveItem1->setId('1234asdf');


$childrenArray []= $childrenDriveItem1;
$requestBody->setChildren($childrenArray);


$additionalData = [
	'@microsoft.graph.conflictBehavior' => 'rename', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->drivesById('drive-id')->bundles()->post($requestBody);


```