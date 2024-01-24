---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AccessPackageAssignmentPolicyItemRequestBuilderGetRequestConfiguration();
$queryParameters = AccessPackageAssignmentPolicyItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["customExtensionStageSettings(\$expand=customExtension)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentPolicies()->byAccessPackageAssignmentPolicyId('accessPackageAssignmentPolicy-id')->get($requestConfiguration)->wait();

```