---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ContactsRequestBuilderGetRequestConfiguration();
$headers = [
		'ConsistencyLevel' => 'eventual',
	];
$requestConfiguration->headers = $headers;

$queryParameters = ContactsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "startswith(displayName,'A')";
$queryParameters->count = true;
$queryParameters->top = 1;
$queryParameters->orderby = ["displayName"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->contacts()->get($requestConfiguration);


```