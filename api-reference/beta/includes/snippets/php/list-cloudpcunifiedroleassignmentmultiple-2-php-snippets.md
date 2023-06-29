---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new RoleAssignmentsRequestBuilderGetRequestConfiguration();
$queryParameters = RoleAssignmentsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "roleDefinitionId eq 'b5c08161-a7af-481c-ace2-a20a69a48fb1'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->roleManagement()->cloudPC()->roleAssignments()->get($requestConfiguration);


```