---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AccessPackageAssignmentsRequestBuilderGetRequestConfiguration();

$queryParameters = new AccessPackageAssignmentsRequestBuilderGetQueryParameters();
$queryParameters->filter = "accessPackageAssignmentPolicy/Id eq 'db440482-1210-4a60-9b55-3ac7a72f63ba'";
$queryParameters->expand = ["target","accessPackageAssignmentResourceRoles"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignments()->get($requestConfiguration);


```