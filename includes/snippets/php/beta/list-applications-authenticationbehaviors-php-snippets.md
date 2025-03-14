---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Applications\ApplicationsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ApplicationsRequestBuilderGetRequestConfiguration();
$queryParameters = ApplicationsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","displayName","appId","authenticationBehaviors"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->applications()->get($requestConfiguration)->wait();

```