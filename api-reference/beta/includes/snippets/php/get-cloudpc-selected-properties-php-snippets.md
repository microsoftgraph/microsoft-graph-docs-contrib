---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new CloudPCRequestBuilderGetRequestConfiguration();
$queryParameters = CloudPCRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","displayName","imageDisplayName","lastModifiedDateTime","lastRemoteActionResult","lastLoginResult","connectivityResult"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->cloudPCsById('cloudPC-id')->get($requestConfiguration);


```