---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new PayloadsRequestBuilderGetRequestConfiguration();

$queryParameters = new PayloadsRequestBuilderGetQueryParameters();
$queryParameters->filter = "source eq 'Tenant'";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->security()->attackSimulation()->payloads()->get($requestConfiguration);


```