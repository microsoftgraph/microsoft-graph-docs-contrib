---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AccessPackageCatalogsRequestBuilderGetRequestConfiguration();

$queryParameters = new AccessPackageCatalogsRequestBuilderGetQueryParameters();
$queryParameters->filter = "(displayName eq 'General')";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageCatalogs()->get($requestConfiguration);


```