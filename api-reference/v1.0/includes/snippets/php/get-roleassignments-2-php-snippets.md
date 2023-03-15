---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new RoleAssignmentsRequestBuilderGetRequestConfiguration();

$queryParameters = new RoleAssignmentsRequestBuilderGetQueryParameters();
$queryParameters->filter = " principalId eq '5bde3e51-d13b-4db1-9948-fe4b109d11a7'";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->roleManagement()->directory()->roleAssignments()->get($requestConfiguration);


```