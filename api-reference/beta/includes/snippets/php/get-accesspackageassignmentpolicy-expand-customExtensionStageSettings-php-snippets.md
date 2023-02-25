---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AccessPackageAssignmentPolicyRequestBuilderGetRequestConfiguration();

$queryParameters = new AccessPackageAssignmentPolicyRequestBuilderGetQueryParameters();
$queryParameters->expand = ["customExtensionStageSettings($expand=customExtension)"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentPoliciesById('accessPackageAssignmentPolicy-id')->get($requestConfiguration);


```
