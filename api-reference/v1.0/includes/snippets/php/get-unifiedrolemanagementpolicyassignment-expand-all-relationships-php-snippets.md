---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new UnifiedRoleManagementPolicyAssignmentRequestBuilderGetRequestConfiguration();
$queryParameters = UnifiedRoleManagementPolicyAssignmentRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["policy($expand=rules)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->policies()->roleManagementPolicyAssignmentsById('unifiedRoleManagementPolicyAssignment-id')->get($requestConfiguration);


```