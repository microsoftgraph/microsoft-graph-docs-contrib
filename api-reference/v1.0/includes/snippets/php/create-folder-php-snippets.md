---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DriveItem();
$requestBody->setName('New Folder');
$folder = new Folder();
$requestBody->setFolder($folder);
$additionalData = [
	'@microsoft.graph.conflictBehavior' => 'rename',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->children()->post($requestBody)->wait();

```