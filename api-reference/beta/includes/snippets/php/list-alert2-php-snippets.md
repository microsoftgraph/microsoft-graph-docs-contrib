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
$queryParameters->filter = "state eq microsoft.graph.healthmonitoring.alertState'active'";
$queryParameters->select = ["id"," alertType"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->reports()->healthMonitoring()->alerts()->get($requestConfiguration)->wait();

```