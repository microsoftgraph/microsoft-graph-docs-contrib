---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new UnifiedRoleManagementPolicyAssignmentRequestBuilderGetRequestConfiguration();

$queryParameters = new UnifiedRoleManagementPolicyAssignmentRequestBuilderGetQueryParameters();
$queryParameters->expand = ["policy($expand=rules)"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->policies()->roleManagementPolicyAssignmentsById('unifiedRoleManagementPolicyAssignment-id')->get($requestConfiguration);


```