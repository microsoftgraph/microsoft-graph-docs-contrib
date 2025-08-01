---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Directory\DeletedItems\Item\Restore\RestorePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RestorePostRequestBody();
$additionalData = [
	'autoReconcileProxyConflict' => true,
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->directory()->deletedItems()->byDirectoryObjectId('directoryObject-id')->restore()->post($requestBody)->wait();

```