---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AccessPackageAssignmentRequestBuilderGetRequestConfiguration();
$queryParameters = AccessPackageAssignmentRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["target"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentsById('accessPackageAssignment-id')->get($requestConfiguration);


```