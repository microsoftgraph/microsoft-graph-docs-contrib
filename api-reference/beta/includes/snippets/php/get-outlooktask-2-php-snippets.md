---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new OutlookTaskItemRequestBuilderGetRequestConfiguration();
$headers = [
		'Prefer' => 'outlook.timezone="Pacific Standard Time"',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->me()->outlook()->tasks()->byOutlookTaskId('outlookTask-id')->get($requestConfiguration)->wait();

```