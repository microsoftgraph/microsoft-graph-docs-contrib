---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Reports\HealthMonitoring\Alerts\AlertsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AlertsRequestBuilderGetRequestConfiguration();
$queryParameters = AlertsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "createdDateTime gt 2024-06-10T11:23:44Z";
$queryParameters->select = ["id"," alertType"," createdDateTime"," state"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->reports()->healthMonitoring()->alerts()->get($requestConfiguration)->wait();

```