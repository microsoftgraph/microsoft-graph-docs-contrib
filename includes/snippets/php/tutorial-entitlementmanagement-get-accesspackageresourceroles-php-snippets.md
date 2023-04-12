---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AccessPackageResourceRolesRequestBuilderGetRequestConfiguration();
$queryParameters = AccessPackageResourceRolesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "(originSystem eq 'AadGroup' and accessPackageResource/id eq '4a1e21c5-8a76-4578-acb1-641160e076e8' and displayName eq 'Member')";
$queryParameters->expand = ["accessPackageResource"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageCatalogsById('accessPackageCatalog-id')->accessPackageResourceRoles()->get($requestConfiguration);


```