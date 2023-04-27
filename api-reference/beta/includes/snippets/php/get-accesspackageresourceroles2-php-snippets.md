---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AccessPackageResourceRolesRequestBuilderGetRequestConfiguration();
$queryParameters = AccessPackageResourceRolesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "(originSystem eq 'SharePointOnline' and accessPackageResource/id eq '53c71803-a0a8-4777-aecc-075de8ee3991')";
$queryParameters->select = ["displayName","originId"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageCatalogsById('accessPackageCatalog-id')->accessPackageResourceRoles()->get($requestConfiguration);


```