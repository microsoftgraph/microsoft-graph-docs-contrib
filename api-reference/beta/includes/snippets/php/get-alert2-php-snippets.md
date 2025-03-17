---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Reports\HealthMonitoring\Alerts\Item\AlertItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AlertItemRequestBuilderGetRequestConfiguration();
$queryParameters = AlertItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["alertType"," state"," createdDateTime"," signals"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->reports()->healthMonitoring()->alerts()->byAlertId('alert-id')->get($requestConfiguration)->wait();

```