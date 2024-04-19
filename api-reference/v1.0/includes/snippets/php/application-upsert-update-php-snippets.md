---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Applications(uniqueName='{uniqueName}')\ApplicationsWithUniqueNameRequestBuilderPatchRequestConfiguration;
use Microsoft\Graph\Generated\Models\Application;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Application();
$requestBody->setDisplayName('Display name');
$requestConfiguration = new ApplicationsWithUniqueNameRequestBuilderPatchRequestConfiguration();
$headers = [
		'Prefer' => 'create-if-missing',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->applicationsWithUniqueName('{uniqueName}', )->patch($requestBody, $requestConfiguration)->wait();

```