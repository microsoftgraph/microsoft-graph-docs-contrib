---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Solutions\BackupRestore\ServiceApps\Item\Activate\ActivateRequestBuilderPostRequestConfiguration;
use Microsoft\Graph\Beta\Generated\Solutions\BackupRestore\ServiceApps\Item\Activate\ActivatePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ActivatePostRequestBody();
$requestBody->setEffectiveDateTime(new \DateTime('2024-04-19T12-01-03.45Z'));
$requestConfiguration = new ActivateRequestBuilderPostRequestConfiguration();
$headers = [
		'Authorization' => 'Bearer <Access-Token>',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->solutions()->backupRestore()->serviceApps()->byServiceAppId('serviceApp-id')->activate()->post($requestBody, $requestConfiguration)->wait();

```