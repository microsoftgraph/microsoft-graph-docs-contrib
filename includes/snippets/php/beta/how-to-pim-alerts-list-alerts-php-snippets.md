---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AlertsRequestBuilderGetRequestConfiguration();
$queryParameters = AlertsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "scopeId eq '/' and scopeType eq 'DirectoryRole'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->roleManagementAlerts()->alerts()->get($requestConfiguration)->wait();

```