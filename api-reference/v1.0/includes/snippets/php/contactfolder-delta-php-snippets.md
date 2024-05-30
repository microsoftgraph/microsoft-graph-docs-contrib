---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\ContactFolders\Delta\DeltaRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DeltaRequestBuilderGetRequestConfiguration();
$headers = [
		'Prefer' => 'odata.maxpagesize=2',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->me()->contactFolders()->delta()->get($requestConfiguration)->wait();

```