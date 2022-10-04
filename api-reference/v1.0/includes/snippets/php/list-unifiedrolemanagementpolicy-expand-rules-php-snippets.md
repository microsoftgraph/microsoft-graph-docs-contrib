---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new RoleManagementPoliciesRequestBuilderGetRequestConfiguration();

$queryParameters = new RoleManagementPoliciesRequestBuilderGetQueryParameters();
$queryParameters->filter = "scopeId eq '/' and scopeType eq 'Directory'";
$queryParameters->expand = ["rules"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->policies()->roleManagementPolicies()->get($requestConfiguration);


```