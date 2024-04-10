---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Directory\AttributeSets\AttributeSetsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AttributeSetsRequestBuilderGetRequestConfiguration();
$queryParameters = AttributeSetsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->top = 10;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->directory()->attributeSets()->get($requestConfiguration)->wait();

```