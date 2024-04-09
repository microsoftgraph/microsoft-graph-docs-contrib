---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\IdentityGovernance\RoleManagementAlerts\Alerts\Item\UnifiedRoleManagementAlertItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new UnifiedRoleManagementAlertItemRequestBuilderGetRequestConfiguration();
$queryParameters = UnifiedRoleManagementAlertItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["*"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->roleManagementAlerts()->alerts()->byUnifiedRoleManagementAlertId('unifiedRoleManagementAlert-id')->get($requestConfiguration)->wait();

```