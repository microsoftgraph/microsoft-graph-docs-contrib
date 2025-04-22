---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Drives\Item\Items\Item\DriveItemItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DriveItemItemRequestBuilderGetRequestConfiguration();
$queryParameters = DriveItemItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["extensions(\$filter=id eq 'myCustomExtension')"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->get($requestConfiguration)->wait();

```