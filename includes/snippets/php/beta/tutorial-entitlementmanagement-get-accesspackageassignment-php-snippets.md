---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\IdentityGovernance\EntitlementManagement\AccessPackageAssignments\AccessPackageAssignmentsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AccessPackageAssignmentsRequestBuilderGetRequestConfiguration();
$queryParameters = AccessPackageAssignmentsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "accessPackageAssignmentPolicy/Id eq 'db440482-1210-4a60-9b55-3ac7a72f63ba'";
$queryParameters->expand = ["target","accessPackageAssignmentResourceRoles"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignments()->get($requestConfiguration)->wait();

```