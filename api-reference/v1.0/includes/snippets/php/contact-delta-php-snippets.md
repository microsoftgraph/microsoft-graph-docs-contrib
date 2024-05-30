---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\ContactFolders\Item\Contacts\Delta\DeltaRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DeltaRequestBuilderGetRequestConfiguration();
$headers = [
		'Prefer' => 'odata.maxpagesize=2',
	];
$requestConfiguration->headers = $headers;

$queryParameters = DeltaRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["displayName"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->contactFolders()->byContactFolderId('contactFolder-id')->contacts()->delta()->get($requestConfiguration)->wait();

```