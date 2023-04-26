---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AccessPackageCatalogsRequestBuilderGetRequestConfiguration();
$queryParameters = AccessPackageCatalogsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "(displayName eq 'General')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageCatalogs()->get($requestConfiguration);


```