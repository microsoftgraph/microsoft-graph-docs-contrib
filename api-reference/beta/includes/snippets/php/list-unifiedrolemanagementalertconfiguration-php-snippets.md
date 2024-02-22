---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AlertConfigurationsRequestBuilderGetRequestConfiguration();
$queryParameters = AlertConfigurationsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "scopeId eq '/' and scopeType eq 'DirectoryRole'";
$queryParameters->expand = ["alertDefinition"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->roleManagementAlerts()->alertConfigurations()->get($requestConfiguration)->wait();

```