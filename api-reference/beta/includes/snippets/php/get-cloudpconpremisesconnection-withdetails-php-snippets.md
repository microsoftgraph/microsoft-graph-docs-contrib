---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new CloudPcOnPremisesConnectionRequestBuilderGetRequestConfiguration();

$queryParameters = new CloudPcOnPremisesConnectionRequestBuilderGetQueryParameters();
$queryParameters->select = ["id","displayName","healthCheckStatus","healthCheckStatusDetails","inUse"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->deviceManagement()->virtualEndpoint()->onPremisesConnectionsById('cloudPcOnPremisesConnection-id')->get($requestConfiguration);


```