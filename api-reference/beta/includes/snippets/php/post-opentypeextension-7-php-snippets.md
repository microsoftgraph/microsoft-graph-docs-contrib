---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\DriveItem;
use Microsoft\Graph\Beta\Generated\Models\Extension;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DriveItem();
$requestBody->setName('New Item');
$extensionsExtension1 = new Extension();
$additionalData = [
	'extensionName' => 'myCustomExtension',
	'myCustomString' => 'Contoso data',
	'myCustomBool' => false,
];
$extensionsExtension1->setAdditionalData($additionalData);
$extensionsArray []= $extensionsExtension1;
$requestBody->setExtensions($extensionsArray);

$additionalData = [
'@microsoft.graph.conflictBehavior' => 'rename',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->children()->post($requestBody)->wait();

```