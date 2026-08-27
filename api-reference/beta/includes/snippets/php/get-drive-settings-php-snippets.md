---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Drives\Item\DriveItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DriveItemRequestBuilderGetRequestConfiguration();
$queryParameters = DriveItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","settings"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->drives()->byDriveId('drive-id')->get($requestConfiguration)->wait();

```