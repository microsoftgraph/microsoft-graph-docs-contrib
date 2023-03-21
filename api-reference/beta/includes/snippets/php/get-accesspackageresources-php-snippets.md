---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AccessPackageResourcesRequestBuilderGetRequestConfiguration();

$queryParameters = new AccessPackageResourcesRequestBuilderGetQueryParameters();
$queryParameters->filter = "resourceType eq 'Application'";
$queryParameters->expand = ["accessPackageResourceScopes"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageCatalogsById('accessPackageCatalog-id')->accessPackageResources()->get($requestConfiguration);


```