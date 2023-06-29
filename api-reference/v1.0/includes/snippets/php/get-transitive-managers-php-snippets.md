---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new MeRequestBuilderGetRequestConfiguration();
$headers = [
		'ConsistencyLevel' => 'eventual',
	];
$requestConfiguration->headers = $headers;

$queryParameters = MeRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["manager($levels=max;$select=id,displayName)"];
$queryParameters->select = ["id","displayName"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->get($requestConfiguration);


```