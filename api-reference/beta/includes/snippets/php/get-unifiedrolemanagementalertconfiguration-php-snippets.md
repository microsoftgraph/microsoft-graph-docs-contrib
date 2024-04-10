---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\IdentityGovernance\RoleManagementAlerts\AlertConfigurations\Item\UnifiedRoleManagementAlertConfigurationItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new UnifiedRoleManagementAlertConfigurationItemRequestBuilderGetRequestConfiguration();
$queryParameters = UnifiedRoleManagementAlertConfigurationItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["alertDefinition"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->roleManagementAlerts()->alertConfigurations()->byUnifiedRoleManagementAlertConfigurationId('unifiedRoleManagementAlertConfiguration-id')->get($requestConfiguration)->wait();

```