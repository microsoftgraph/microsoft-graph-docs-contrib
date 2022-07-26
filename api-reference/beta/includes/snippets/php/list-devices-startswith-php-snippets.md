---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new DevicesRequestBuilderGetRequestConfiguration();

$queryParameters = new DevicesRequestBuilderGetQueryParameters();
$queryParameters->filter = "startswith(displayName,%20'a')";
$queryParameters->count = true;
$queryParameters->top = 1;
$queryParameters->orderby = ["displayName"];

$headers = [
'ConsistencyLevel' => 'eventual',
];

$requestConfiguration->queryParameters = $queryParameters;
$requestConfiguration->headers = $headers;


$requestResult = $graphServiceClient->devices()->get($requestConfiguration);


```