---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Drives\Item\Items\Item\Workbook\CreateSession\CreateSessionRequestBuilderPostRequestConfiguration;
use Microsoft\Graph\Generated\Models\CreateSessionPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CreateSessionPostRequestBody();
$requestBody->setPersistChanges(true);
$requestConfiguration = new CreateSessionRequestBuilderPostRequestConfiguration();
$headers = [
		'Prefer' => 'respond-async',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->createSession()->post($requestBody, $requestConfiguration)->wait();

```