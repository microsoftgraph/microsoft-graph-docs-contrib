---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new UnifiedRoleManagementAlertRequestBuilderGetRequestConfiguration();
$queryParameters = UnifiedRoleManagementAlertRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["alertDefinition","alertConfiguration","alertIncidents"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->roleManagementAlerts()->alerts()->byAlertId('unifiedRoleManagementAlert-id')->get($requestConfiguration);


```