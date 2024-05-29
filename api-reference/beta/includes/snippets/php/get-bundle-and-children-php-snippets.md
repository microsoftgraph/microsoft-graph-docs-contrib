---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Drives\Item\Items\Item\DriveItemItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DriveItemItemRequestBuilderGetRequestConfiguration();
$queryParameters = DriveItemItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["children"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->get($requestConfiguration)->wait();

```