---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ContentStreamRequestBuilderGetRequestConfiguration();
$headers = [
		'Range' => 'bytes=0-1023',
	];
$requestConfiguration->headers = $headers;


$graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->contentStream()->get($requestConfiguration)->wait();

```