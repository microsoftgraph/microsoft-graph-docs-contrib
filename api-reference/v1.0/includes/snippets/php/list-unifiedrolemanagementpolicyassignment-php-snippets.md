---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new RoleManagementPolicyAssignmentsRequestBuilderGetRequestConfiguration();

$queryParameters = new RoleManagementPolicyAssignmentsRequestBuilderGetQueryParameters();
$queryParameters->filter = "scopeId eq '/' and scopeType eq 'Directory'";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->policies()->roleManagementPolicyAssignments()->get($requestConfiguration);


```