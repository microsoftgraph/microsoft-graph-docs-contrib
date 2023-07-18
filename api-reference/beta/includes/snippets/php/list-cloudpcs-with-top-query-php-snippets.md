---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CloudPCsRequestBuilderGetRequestConfiguration();
$queryParameters = CloudPCsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->top = 2;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->cloudPCs()->get($requestConfiguration);


```