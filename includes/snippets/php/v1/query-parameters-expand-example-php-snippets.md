---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Drives\Item\Root\RootRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RootRequestBuilderGetRequestConfiguration();
$queryParameters = RootRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["children"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->drives()->byDriveId('drive-id')->root()->get($requestConfiguration)->wait();

```