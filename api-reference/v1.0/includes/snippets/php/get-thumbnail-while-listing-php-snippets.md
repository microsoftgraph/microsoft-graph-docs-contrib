---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Drives\Item\Items\Item\Children\ChildrenRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ChildrenRequestBuilderGetRequestConfiguration();
$queryParameters = ChildrenRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["thumbnails"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->children()->get($requestConfiguration)->wait();

```