---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Shares\Item\DriveItem\DriveItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DriveItemRequestBuilderGetRequestConfiguration();
$queryParameters = DriveItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["children"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->shares()->bySharedDriveItemId('sharedDriveItem-id')->driveItem()->get($requestConfiguration)->wait();

```