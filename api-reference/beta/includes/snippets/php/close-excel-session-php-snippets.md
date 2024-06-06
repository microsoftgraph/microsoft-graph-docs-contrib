---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Drives\Item\Items\Item\Workbook\CloseSession\CloseSessionRequestBuilderPostRequestConfiguration;
use Microsoft\Graph\Beta\Generated\Drives\Item\Items\Item\Workbook\CloseSession\CloseSessionPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloseSessionPostRequestBody();
$requestConfiguration = new CloseSessionRequestBuilderPostRequestConfiguration();
$headers = [
		'workbook-session-id' => '{session-id}',
	];
$requestConfiguration->headers = $headers;


$graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->closeSession()->post($requestBody, $requestConfiguration)->wait();

```