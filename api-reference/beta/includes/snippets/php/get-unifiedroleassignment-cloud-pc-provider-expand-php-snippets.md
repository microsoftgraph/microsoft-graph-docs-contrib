---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new UnifiedRoleAssignmentMultipleRequestBuilderGetRequestConfiguration();
$queryParameters = UnifiedRoleAssignmentMultipleRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["roleDefinition"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->roleManagement()->cloudPC()->roleAssignmentsById('unifiedRoleAssignmentMultiple-id')->get($requestConfiguration);


```