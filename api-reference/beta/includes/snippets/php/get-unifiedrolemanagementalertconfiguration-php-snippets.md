---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\IdentityGovernance\RoleManagementAlerts\AlertConfigurations\Item\UnifiedRoleManagementAlertConfigurationItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new UnifiedRoleManagementAlertConfigurationItemRequestBuilderGetRequestConfiguration();
$queryParameters = UnifiedRoleManagementAlertConfigurationItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["alertDefinition"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->roleManagementAlerts()->alertConfigurations()->byUnifiedRoleManagementAlertConfigurationId('unifiedRoleManagementAlertConfiguration-id')->get($requestConfiguration)->wait();

```