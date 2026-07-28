---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Planner\Tasks\Delta\DeltaRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DeltaRequestBuilderGetRequestConfiguration();
$queryParameters = DeltaRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "planId eq '-W4K7hIak0WlAwgJCn1sEWQABgjH'";
$queryParameters->select = ["percentComplete","assignments","creationSource"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->planner()->tasks()->delta()->get($requestConfiguration)->wait();

```