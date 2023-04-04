---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new DevicesRequestBuilderGetRequestConfiguration();

$queryParameters = new DevicesRequestBuilderGetQueryParameters();
$queryParameters->search = "\"displayName:Android\"";
$queryParameters->count = true;

$headers = [
'ConsistencyLevel' => 'eventual',
];

$requestConfiguration->queryParameters = $queryParameters;
$requestConfiguration->headers = $headers;


$requestResult = $graphServiceClient->devices()->get($requestConfiguration);


```