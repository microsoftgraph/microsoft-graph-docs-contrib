---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Drives\Item\Items\Item\Thumbnails\ThumbnailsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ThumbnailsRequestBuilderGetRequestConfiguration();
$queryParameters = ThumbnailsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["c300x400_crop"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->thumbnails()->get($requestConfiguration)->wait();

```