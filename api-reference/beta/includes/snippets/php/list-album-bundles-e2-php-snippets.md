---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Drives\Item\Bundles\BundlesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new BundlesRequestBuilderGetRequestConfiguration();
$queryParameters = BundlesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "bundle/album ne null";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->drives()->byDriveId('drive-id')->bundles()->get($requestConfiguration)->wait();

```