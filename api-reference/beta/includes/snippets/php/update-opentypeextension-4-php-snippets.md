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
	'extensionName' => 'newExtensionName',
	'myCustomString' => 'Contoso data',
	'myCustomBool' => false,
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->sites()->bySiteId('site-id')->extensions()->byExtensionId('extension-id')->patch($requestBody)->wait();

```