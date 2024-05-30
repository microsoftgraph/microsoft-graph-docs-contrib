---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Drives\Item\Items\Item\Workbook\RefreshSession\RefreshSessionRequestBuilderPostRequestConfiguration;
use Microsoft\Graph\Beta\Generated\Drives\Item\Items\Item\Workbook\RefreshSession\RefreshSessionPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RefreshSessionPostRequestBody();
$requestConfiguration = new RefreshSessionRequestBuilderPostRequestConfiguration();
$headers = [
		'workbook-session-id' => '{session-id}',
	];
$requestConfiguration->headers = $headers;


$graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->refreshSession()->post($requestBody, $requestConfiguration)->wait();

```