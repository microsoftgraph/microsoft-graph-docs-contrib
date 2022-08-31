---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AccessPackageResourceEnvironmentsRequestBuilderGetRequestConfiguration();

$queryParameters = new AccessPackageResourceEnvironmentsRequestBuilderGetQueryParameters();
$queryParameters->filter = "originSystem eq 'SharePointOnline'";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageResourceEnvironments()->get($requestConfiguration);


```