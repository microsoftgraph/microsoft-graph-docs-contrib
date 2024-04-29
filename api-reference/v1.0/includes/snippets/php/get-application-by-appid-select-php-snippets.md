---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Applications(appId='{appId}')\ApplicationsWithAppIdRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ApplicationsWithAppIdRequestBuilderGetRequestConfiguration();
$queryParameters = ApplicationsWithAppIdRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","appId","displayName","requiredResourceAccess"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->applicationsWithAppId('{appId}', )->get($requestConfiguration)->wait();

```