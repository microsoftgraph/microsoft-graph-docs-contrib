---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new PermissionsRequestChangesRequestBuilderGetRequestConfiguration();
$queryParameters = PermissionsRequestChangesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "modificationDateTime gt {t}";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->permissionsManagement()->permissionsRequestChanges()->get($requestConfiguration)->wait();

```