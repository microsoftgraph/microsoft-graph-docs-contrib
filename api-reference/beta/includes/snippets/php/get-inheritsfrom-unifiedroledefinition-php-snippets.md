---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new UnifiedRoleDefinitionRequestBuilderGetRequestConfiguration();
$queryParameters = UnifiedRoleDefinitionRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["inheritsPermissionsFrom"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->roleManagement()->directory()->roleDefinitionsById('unifiedRoleDefinition-id')->get($requestConfiguration);


```