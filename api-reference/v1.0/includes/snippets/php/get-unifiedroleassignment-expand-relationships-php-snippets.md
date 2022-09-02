---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new UnifiedRoleAssignmentRequestBuilderGetRequestConfiguration();

$queryParameters = new UnifiedRoleAssignmentRequestBuilderGetQueryParameters();
$queryParameters->expand = ["roleDefinition"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->roleManagement()->directory()->roleAssignmentsById('unifiedRoleAssignment-id')->get($requestConfiguration);


```