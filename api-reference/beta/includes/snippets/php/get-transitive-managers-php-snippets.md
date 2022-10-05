---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new MeRequestBuilderGetRequestConfiguration();

$queryParameters = new MeRequestBuilderGetQueryParameters();
$queryParameters->expand = ["manager($levels=max;$select=id,displayName)"];
$queryParameters->select = ["id","displayName"];
$queryParameters->count = true;

$headers = [
'ConsistencyLevel' => 'eventual',
];

$requestConfiguration->queryParameters = $queryParameters;
$requestConfiguration->headers = $headers;


$requestResult = $graphServiceClient->me()->get($requestConfiguration);


```