---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AccessPackageAssignmentPolicyRequestBuilderGetRequestConfiguration();
$queryParameters = AccessPackageAssignmentPolicyRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["customExtensionStageSettings($expand=customExtension)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentPoliciesById('accessPackageAssignmentPolicy-id')->get($requestConfiguration);


```