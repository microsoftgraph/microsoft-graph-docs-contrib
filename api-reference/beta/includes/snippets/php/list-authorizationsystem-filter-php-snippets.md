---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AuthorizationSystemsRequestBuilderGetRequestConfiguration();
$queryParameters = AuthorizationSystemsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "dataCollectionInfo/entitlements/microsoft.graph.entitlementsDataCollection/permissionsModificationCapability eq 'enabled' and dataCollectionInfo/entitlements/microsoft.graph.entitlementsDataCollection/status eq 'online'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->external()->authorizationSystems()->get($requestConfiguration)->wait();

```