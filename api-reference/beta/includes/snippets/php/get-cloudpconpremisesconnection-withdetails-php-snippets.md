---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CloudPcOnPremisesConnectionRequestBuilderGetRequestConfiguration();
$queryParameters = CloudPcOnPremisesConnectionRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","displayName","healthCheckStatus","healthCheckStatusDetails","inUse"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->onPremisesConnections()->byCloudPcOnPremisesConnectionId('cloudPcOnPremisesConnection-id')->get($requestConfiguration);


```