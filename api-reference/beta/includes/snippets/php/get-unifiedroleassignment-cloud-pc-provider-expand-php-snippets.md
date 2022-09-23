---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new UnifiedRoleAssignmentMultipleRequestBuilderGetRequestConfiguration();

$queryParameters = new UnifiedRoleAssignmentMultipleRequestBuilderGetQueryParameters();
$queryParameters->expand = ["roleDefinition"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->roleManagement()->cloudPC()->roleAssignmentsById('unifiedRoleAssignmentMultiple-id')->get($requestConfiguration);


```