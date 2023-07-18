---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AccessPackageResourcesRequestBuilderGetRequestConfiguration();
$queryParameters = AccessPackageResourcesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "resourceType eq 'Application'";
$queryParameters->expand = ["accessPackageResourceScopes"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageCatalogs()->byAccessPackageCatalogId('accessPackageCatalog-id')->accessPackageResources()->get($requestConfiguration);


```