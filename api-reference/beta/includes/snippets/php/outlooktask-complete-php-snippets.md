---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\Outlook\Tasks\Item\Complete\CompleteRequestBuilderPostRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CompleteRequestBuilderPostRequestConfiguration();
$headers = [
		'Prefer' => 'outlook.timezone="Pacific Standard Time"',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->me()->outlook()->tasks()->byOutlookTaskId('outlookTask-id')->complete()->post($requestConfiguration)->wait();

```