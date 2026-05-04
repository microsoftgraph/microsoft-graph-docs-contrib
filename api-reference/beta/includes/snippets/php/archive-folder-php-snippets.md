---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Drives\Item\Items\Item\Archive\ArchiveRequestBuilderPostRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ArchiveRequestBuilderPostRequestConfiguration();
$headers = [
		'Prefer' => 'respond-async',
	];
$requestConfiguration->headers = $headers;


$graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->archive()->post($requestConfiguration)->wait();

```