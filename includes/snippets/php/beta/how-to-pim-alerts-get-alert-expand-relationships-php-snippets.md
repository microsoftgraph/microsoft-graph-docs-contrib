---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new UnifiedRoleManagementAlertItemRequestBuilderGetRequestConfiguration();
$queryParameters = UnifiedRoleManagementAlertItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["*"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->roleManagementAlerts()->alerts()->byUnifiedRoleManagementAlertId('unifiedRoleManagementAlert-id')->get($requestConfiguration)->wait();

```