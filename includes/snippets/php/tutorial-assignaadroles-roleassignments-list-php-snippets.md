---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new RoleAssignmentsRequestBuilderGetRequestConfiguration();

$queryParameters = new RoleAssignmentsRequestBuilderGetQueryParameters();
$queryParameters->filter = "principalId eq '7146daa8-1b4b-4a66-b2f7-cf593d03c8d2'";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->roleManagement()->directory()->roleAssignments()->get($requestConfiguration);


```