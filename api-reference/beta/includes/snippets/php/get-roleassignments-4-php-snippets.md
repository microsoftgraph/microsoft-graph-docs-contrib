---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new RoleAssignmentsRequestBuilderGetRequestConfiguration();
$queryParameters = RoleAssignmentsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "principalId eq '/ServicePrincipals/5d39cc4d-ba68-4c44-92c7-5056e3a1ce39'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->roleManagement()->exchange()->roleAssignments()->get($requestConfiguration);


```