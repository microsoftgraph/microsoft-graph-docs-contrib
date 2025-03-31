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
$queryParameters->filter = "containerTypeId eq e2756c4d-fa33-4452-9c36-2325686e1082";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->storage()->fileStorage()->containers()->get($requestConfiguration)->wait();

```