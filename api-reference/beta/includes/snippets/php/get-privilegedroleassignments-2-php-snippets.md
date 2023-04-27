---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new PrivilegedRoleAssignmentsRequestBuilderGetRequestConfiguration();
$queryParameters = PrivilegedRoleAssignmentsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "isElevated eq true";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->privilegedRoleAssignments()->get($requestConfiguration);


```