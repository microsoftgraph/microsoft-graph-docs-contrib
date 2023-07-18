---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RoleManagementPolicyAssignmentsRequestBuilderGetRequestConfiguration();
$queryParameters = RoleManagementPolicyAssignmentsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "scopeId eq '60bba733-f09d-49b7-8445-32369aa066b3' and scopeType eq 'Group'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->policies()->roleManagementPolicyAssignments()->get($requestConfiguration);


```