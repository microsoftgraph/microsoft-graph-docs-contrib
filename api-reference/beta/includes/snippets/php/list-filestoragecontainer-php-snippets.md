---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Storage\FileStorage\Containers\ContainersRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ContainersRequestBuilderGetRequestConfiguration();
$queryParameters = ContainersRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "containerTypeId eq {containerTypeId}";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->storage()->fileStorage()->containers()->get($requestConfiguration)->wait();

```