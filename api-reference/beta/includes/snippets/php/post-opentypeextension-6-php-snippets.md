---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Extension;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Extension();
$additionalData = [
	'extensionName' => 'myCustomExtension',
	'myCustomString' => 'Contoso data',
	'myCustomBool' => false,
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->extensions()->post($requestBody)->wait();

```