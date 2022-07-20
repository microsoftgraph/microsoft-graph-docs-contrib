---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new PrivilegedRoleAssignmentsRequestBuilderGetRequestConfiguration();

$queryParameters = new PrivilegedRoleAssignmentsRequestBuilderGetQueryParameters();
$queryParameters->filter = "isElevated eq true and expirationDateTime ne null or isElevated eq false";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->privilegedRoleAssignments()->get($requestConfiguration);


```